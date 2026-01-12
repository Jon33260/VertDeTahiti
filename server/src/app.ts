import fs from "node:fs";
import path from "node:path";
import cookieParser from "cookie-parser";
import cors from "cors";
import express from "express";
import type { ErrorRequestHandler } from "express";

const app = express();

/* ************************************************************************* */
/* Cookies */

app.use(cookieParser());

/* ************************************************************************* */
/* CORS */

if (process.env.CLIENT_URL != null) {
  app.use(cors({ origin: [process.env.CLIENT_URL], credentials: true }));
}

/* ************************************************************************* */
/* Request parsing */

app.use(express.json());

/* ************************************************************************* */
/* ✅ SERVIR LES UPLOADS (OBLIGATOIRE POUR IMAGES / VIDÉOS) */
/* 👉 DOIT ÊTRE AVANT LE ROUTER */

app.use(
  "/uploads",
  express.static(path.join(__dirname, "../../server/public/uploads")),
);

/* ************************************************************************* */
/* API Router */

import router from "./router";
app.use(router);

/* ************************************************************************* */
/* Production-ready setup */

/* Serve server public resources */

const publicFolderPath = path.join(__dirname, "../../server/public");

if (fs.existsSync(publicFolderPath)) {
  app.use(express.static(publicFolderPath));
}

/* Serve client build */

const clientBuildPath = path.join(__dirname, "../../client/dist");

if (fs.existsSync(clientBuildPath)) {
  app.use(express.static(clientBuildPath));

  // Redirect unhandled requests to client
  app.get("*", (_, res) => {
    res.sendFile("index.html", { root: clientBuildPath });
  });
}

/* ************************************************************************* */
/* Error logging middleware */

const logErrors: ErrorRequestHandler = (err, req, _res, next) => {
  console.error(err);
  console.error("on req:", req.method, req.path);
  next(err);
};

app.use(logErrors);

/* ************************************************************************* */

export default app;
