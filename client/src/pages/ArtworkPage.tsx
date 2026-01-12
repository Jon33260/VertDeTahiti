import "../styles/ArtworkPage.css";
import { useEffect, useState } from "react";
import {
  Link,
  useLoaderData,
  useParams,
  useRevalidator,
} from "react-router-dom";
import { ToastContainer, Zoom, toast } from "react-toastify";
import CommentsList from "../components/CommentsList";
import EditPost from "../components/EditPost";
import SvgIcons from "../components/SvgIcons";
import useAuth from "../services/AuthContext";
import {
  addComment,
  addLike,
  checkIfLiked,
  removeLike,
} from "../services/requests";

const likeIcon = {
  like: {
    width: "28px",
    height: "28px",
    path: "m480-120-58-52q-101-91-167-157T150-447.5Q111-500 95.5-544T80-634q0-94 63-157t157-63q52 0 99 22t81 62q34-40 81-62t99-22q94 0 157 63t63 157q0-46-15.5-90T810-447.5Q771-395 705-329T538-172l-58 52Zm0-108q96-86 158-147.5t98-107q36-45.5 50-81t14-70.5q0-60-40-100t-100-40q-47 0-87 26.5T518-680h-76q-15-41-55-67.5T300-774q-60 0-100 40t-40 100q0 35 14 70.5t50 81q36 45.5 98 107T480-228Zm0-273Z",
  },
};

const baseUrl = import.meta.env.VITE_API_URL;

export default function ArtworkPage() {
  const { id } = useParams();
  const { artworkData, category } = useLoaderData() as {
    artworkData: ArtworkDataType;
    category: Category[];
  };

  const [liked, setLiked] = useState(false);
  const [commentText, setCommentText] = useState("");

  const revalidator = useRevalidator();
  const { currentUser } = useAuth();

  // Vérifie si l'utilisateur a liké
  useEffect(() => {
    const fetchLikeStatus = async () => {
      try {
        const isLiked = await checkIfLiked(Number(id));
        setLiked(!!isLiked);
      } catch (error) {
        console.error(error);
      }
    };
    fetchLikeStatus();
  }, [id]);

  const handleLikeClick = async () => {
    if (currentUser.id === 0) {
      toast.error("Vous devez être connecté pour liker un article", {
        position: "top-right",
        autoClose: 2000,
        transition: Zoom,
      });
      return;
    }

    try {
      if (liked) {
        await removeLike(Number(id));
        setLiked(false);
      } else {
        await addLike(Number(id));
        setLiked(true);
      }
      revalidator.revalidate();
    } catch (error) {
      console.error(error);
    }
  };

  const handleCommentSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!commentText.trim()) return;

    try {
      await addComment(Number(id), commentText);
      setCommentText("");
      revalidator.revalidate();
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <article className="artwork-page">
      <figure className="artwork-image">
        <div className="artwork-image-link-container">
          <Link to="/" className="artwork-image-link">
            Retour
          </Link>

          {currentUser.id === artworkData.artwork.user_id && (
            <EditPost artwork={artworkData.artwork} category={category} />
          )}
        </div>

        {/* AFFICHAGE PROPRE IMAGE / VIDEO */}
        {artworkData.artwork.video ? (
          <video
            className="artwork-media"
            controls
            preload="metadata"
            poster={`${baseUrl}/uploads/${artworkData.artwork.picture}`}
          >
            <source
              src={`${baseUrl}/uploads/${artworkData.artwork.video}`}
              type="video/mp4"
            />
            <track kind="captions" src="" />
          </video>
        ) : (
          <img
            className="artwork-media"
            src={`${baseUrl}/uploads/${artworkData.artwork.picture}`}
            alt={artworkData.artwork.description || artworkData.artwork.title}
          />
        )}
      </figure>

      <section className="artwork-details">
        <h1>{artworkData.artwork.title}</h1>
        <p className="description">{artworkData.artwork.description}</p>

        <div className="like-section">
          <button
            type="button"
            onClick={handleLikeClick}
            className={`like-button ${liked ? "liked" : ""}`}
          >
            <SvgIcons {...likeIcon.like} />
            <span>{artworkData.artwork.likeCount}</span>
          </button>
        </div>

        {currentUser.id !== 0 && (
          <form onSubmit={handleCommentSubmit}>
            <textarea
              value={commentText}
              onChange={(e) => setCommentText(e.target.value)}
            />
            <button type="submit">Envoyer</button>
          </form>
        )}

        <CommentsList artworkData={artworkData} />
      </section>

      <ToastContainer transition={Zoom} />
    </article>
  );
}
