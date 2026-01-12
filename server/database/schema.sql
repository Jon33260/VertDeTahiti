-- SQLBook: Code
CREATE TABLE user (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  hashed_password VARCHAR(255) NOT NULL,
  picture VARCHAR(255) DEFAULT "default_pfp.jpg",
  following INT DEFAULT 0,
  followers INT DEFAULT 0, 
  bio TEXT DEFAULT NULL,
  portfolio VARCHAR(255) DEFAULT NULL,
  website VARCHAR(255) DEFAULT NULL,
  is_admin BOOLEAN DEFAULT FALSE
);

-- le mdp est mdpAFAC@91
INSERT INTO user(username, email, hashed_password, picture, bio, portfolio, website, is_admin) VALUES
("Jonathan", "test@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "jonathan.jpeg", "Supporter des verts et membres fondateur de la section 211 Les Verts De Tahiti", "https://johndoe.dev", "https://instagram.com/johndoe", TRUE),
("Dominique", "ezio@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "chapeaunoir.jpg", "Supporter des verts depuis plus de 50 ans et membres fondateur de la section 211", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Judith", "judith@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "femme2.jpg", "Artiste amateur, je suis passionnée de street d'art ", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Pierre", "pierre@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "homme2.jpg", "Je suis un grand passionné de danse ", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Clément PICASSO", "clement@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "clement.png", "I am a digital artist and photographer capturing the beauty of Earth's diverse landscapes. Through photography and digital art, I blend reality and imagination to create immersive scenes that highlight nature's depth, light, and atmosphere, inviting viewers to explore the world through a new lens.", "www.clementpicasso.art", "https://instagram.com/clementpicasso", FALSE),
("David", "david@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "homme4.jpg", "J'adore les battles de danse avec ma crew", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Alice", "alice@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "femme1.jpg", "Bonjour, je suis une fan de sculpture depuis toute petite", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Bob", "bob@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "homme5.jpg", "Amoureux d'arts", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Charlie", "charlie@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "femme4.jpg", "J'adore l'art", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Emma", "emma@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "femme3.jpg", "Grande amateur d'art", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Sophie", "sophie@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "sophie.jpg", "Je suis ici pour apprendre des artistes", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Antoine", "antoine@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "antoine.jpg", "Artiste digital créant des œuvres abstraites et modernes", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Marie", "marie@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "marie.jpg", "Illustratrice et peintre explorant le mélange des styles artistiques.", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Lucas", "lucas@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "lucas.jpg", "Passionné de photographie de rue et de portraits urbains.", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Lisa", "lisa@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "lisa.jpg", "Ici c'est Marseille bébé !", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE);




CREATE TABLE category (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name VARCHAR(255) NOT NULL
);

INSERT INTO category (name) VALUES
  ('Photos'),
  ('Vidéos'),
  ('Jour de match'),
  ('Débats'),
  ('Humour vert');


CREATE TABLE artwork (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(50) NOT NULL,
  description VARCHAR(255) DEFAULT NULL,
  picture TEXT DEFAULT NULL,
  video TEXT DEFAULT NULL,
  category_id INT NOT NULL,
  user_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(user_id) REFERENCES user(id),
  FOREIGN KEY(category_id) REFERENCES category(id)
);

INSERT INTO artwork(title, description, picture, video, category_id, user_id, created_at) VALUES
("Le chaudron", "Geoffroy Guichard", "chaudron.jpg", NULL, 1, 3, '2023-01-15 10:30:00'),
("Vue de la pelouse", "Une belle vue des tribunes depuis la pelouse", "pelouse.jpg", NULL, 1, 8, '2023-02-20 14:45:00'),
("Geoffroy Guichard", "Le chaudron de l'extérieur", "vu-exterieur.jpg", NULL, 1, 6, '2023-03-10 09:15:00'),
("Ambiance Kop Nord", "L'ambiance des Magics Fans pendant un match", "ambiance-match.jpg", NULL, 1, 2, '2023-04-05 16:20:00'),
("Un petit jeu de mots", "Pas mal", "humourvert-1.jpg", NULL, 5, 9, '2023-05-12 11:30:00'),
("Horneland", "Coach Horneland stop ou encore ?", "horneland.jpg", NULL, 4, 5, '2026-01-06 13:00:00'),
("Entrée des joueurs", "Que le spectacle commence", "match1.jpg", NULL, 3, 3, '2023-07-18 15:55:00'),
("Kop Nord", "Une jolie animation des Magics Fans", "match2.jpg", NULL, 3, 9, '2023-08-30 10:25:00'),
("Présentation des équipes", "Les joueurs font face à la tribune de presse", "match3.jpg", NULL, 3, 6, '2023-09-14 12:35:00'),
("Chants et écharpes vertes", "Grosse ambiance dans le temple du football", "match4.webp", NULL, 3, 1, '2023-10-22 14:15:00'),
("Ambiance Geoffroy Guichard", "Une énorme ambiance pour ce ASSE-PSG", NULL, "Ambiance-ASSE.mp4", 2, 2, '2023-11-05 09:45:00'),
("Le chant des supporters", "Tous en coeur pour encourager nos verts", "jonathan1.jpg", NULL, 1, 1, '2023-11-28 16:50:00'),
("Sur la plage", "Petite pose photo sur la plage avec la section 211", "jonathan2.jpg", NULL, 1, 1, '2023-12-10 11:20:00'),
("Drapeau à la main", "4 membres fondateur de la section 211", "jonathan3.jpg", NULL, 1, 1, '2023-12-24 13:30:00'),
("Ville la nuit", "Vue aérienne d'une ville illuminée la nuit", "vue-aerienne-ville-illuminations-nuit_181624-13831.avif", NULL, 3, 3, '2024-01-08 15:40:00'),
("Paysage montagneux", "Paysage montagneux avec un lac au premier plan", "vue-montagnes-lac-contre-ciel-bleu_181624-20597.avif", NULL, 3, 4, '2024-01-20 10:15:00'),
("Forêt en automne", "Forêt avec feuillage automnal", "foret-avec-arbres-automne_181624-14110.avif", NULL, 3, 5, '2024-02-01 12:25:00'),
("Un jaguar", "Un magnifique jaguar", "jaguar.avif", NULL, 5, 4, '2025-03-25 15:50:00'),
("Une tortue", "Une tortue nage", "Tortue.avif", NULL, 5, 3, '2025-03-25 14:00:00'),
("Un magnifique trio", "Trois prédateurs", "Trio.avif", NULL, 5, 2, '2025-03-22 16:00:00'),
("Un perroquet", "Un perroquet sort du mur", "Perroquet.avif", NULL, 5, 8, '2025-03-20 11:30:00'),
("L'oeil", "Un magnifique oeil", "Oeil.avif", NULL, 5, 9, '2025-03-10 10:00:00'),
("Marianne", "Un portrait représentant Marianne", "Marianne.avif", NULL, 5, 10, '2025-03-05 14:00:00'),
("Mélange d'animaux", "Un très beau mélange", "animaux.avif", NULL, 5, 7, '2025-03-02 17:00:00'),
("Une jeune femme", "Une magnifique jeune femme", "Jeunefemme.avif", NULL, 5, 2, '2025-03-24 12:00:00'),
("Une petite fille", "Une bonne sieste", "Petitefille.avif", NULL, 5, 9, '2025-03-25 13:50:00'),
("Jules César", "Statue de Jules César", "Cesar.avif", NULL, 2, 3, '2025-03-25 16:00:00'),
("Cléopâtre", "La reine Cléopâtre", "Cleopatre.avif", NULL, 2, 2, '2025-03-19 13:00:00'),
("Un ours", "Un ours en bois", "Ours.avif", NULL, 1, 4, '2025-03-16 11:00:00'),
("Zeus", "Le dieu Zeus", "Zeus.avif", NULL, 3, 3, '2025-03-21 14:00:00'),
("Le penseur", "Je pense...un instant", "Penseur.avif", NULL, 2, 3, '2025-03-25 08:40:00'),
("Athéna", "La déesse Athéna", "Athena.avif", NULL, 3, 5, '2025-03-12 14:00:00'),
("Un duo", "Un homme et une femme", "duosaute.avif", NULL, 4, 3, '2025-03-21 19:50:00'),
("Un groupe", "Une chorégraphie", "Groupe.avif", NULL, 4, 7, '2025-03-16 20:20:00'),
("Une danseuse", "Une danseuse avec son voile rouge", "danseuserouge.avif", NULL, 4, 8, '2025-03-15 07:30:00'),
("Rock", "Une affiche de rock", "Rock.avif", NULL, 4, 6, '2025-03-24 19:00:00'),
("Salsa", "Une affiche de salsa", "salsa.avif", NULL, 4, 9, '2025-03-23 12:30:00'),
("Tango", "Un tango argentin", "Tango.avif", NULL, 4, 10, '2025-03-22 15:00:00'),
("Une guitare", "Une très belle guitare avec des ailes", "aileguitare.avif", NULL, 2, 11, '2025-03-07 13:00:00'),
("Une route", "Une route en forme de piano", "Routepiano.avif", NULL, 2, 12, '2025-03-05 21:30:00'),
("Un piano", "Un piano coloré", "piano.avif", NULL, 2, 13, '2025-03-03 10:30:00'),
("Un tambour", "Un vieil homme qui fait du tambour", "Tambour.avif", NULL, 2, 9, '2025-03-25 11:20:30'),
("Un violon", "Une jeune fille fait du violon", "violon.avif", NULL, 2, 6, '2025-03-20 12:00:00'),
("Un casque", "Un jeune homme avec son casque", "casque.avif", NULL, 2, 4, '2025-03-25 14:00:00'),
("Balade", "Une balade le long du quai", "Baladequai.avif", NULL, 1, 5, '2025-03-25 14:35:00'),
("Une femme", "Un portrait avec pleins de couleurs", "Femme.avif", NULL, 1, 10, '2025-03-25 10:00:00'),
("Lunette", "Une belle paire de lunette", "lunette.avif", NULL, 1, 12, '2025-03-25 12:20:00'),
("Un singe", "Le singe prend la pose", "portraitsinge.avif", NULL, 1, 8, '2025-03-25 19:10:00'),
("Un tableau", "Un beau tableau", "singe.avif", NULL, 1, 6, '2025-03-25 22:22:00'),
("Un champ", "Je fais du vélo dans le champ", "champ.avif", NULL, 1, 5, '2025-03-25 23:30:00'),
("Battle", "Une battle de hip hop", "hip1.avif", NULL, 4, 10, '2025-03-22 14:44:00'),
("Groupe", "Une battle de groupe", "hip2.avif", NULL, 4, 11, '2025-01-10 15:00:00'),
("Figure", "Un danseur de hip hop", "hip3.avif", NULL, 4, 12, '2025-02-22 19:00:00'),
("Tahitienne", "Danse d'une polynésienne", "tahiti.avif", NULL, 4, 4, '2025-03-20 10:30:00'),
("Un homme", "Une oeuvre musicale", "homme.avif", NULL, 2, 10, '2025-03-10 20:40:30'),
("Une table de mixage", "Un homme fait du mix", "mix.avif", NULL, 2, 2, '2025-01-18 16:00:00'),
("Une ville", "Un beau tableau avec des buildings", "ville.avif", NULL, 1, 3, '2025-03-24 22:45:00'),
("Un Koala", "Une jolie peinture d'un koala", "koala.avif", NULL, 1, 12, '2025-03-25 22:22:00'),
("Un lion", "Une sculpture d'un lion", "lion.avif", NULL, 1, 7, '2025-02-20 16:00:00'),
("Un chat", "Sculpture d'un chat", "chat.avif", NULL, 1, 9, '2025-03-13 10:50:25'),
("Rock'n Roll", "Une enceinte et une guitare", "enceinterock.avif", NULL, 2, 8, '2025-03-23 21:00:00');



CREATE TABLE event (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  picture text DEFAULT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  location VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE event_artwork (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  event_id INT NOT NULL,
  artwork_id INT NOT NULL,
  FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE CASCADE,
  FOREIGN KEY (artwork_id) REFERENCES artwork(id) ON DELETE CASCADE
);

INSERT INTO event(title, description, picture, start_date, end_date, location) VALUES
("Exposition d'art 1", "Exposition d'art moderne", "https://images.pexels.com/photos/1585325/pexels-photo-1585325.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-15", "2025-03-20", "Paris"),
("Exposition d'art 2", "Exposition d'art ancien","https://images.pexels.com/photos/631339/pexels-photo-631339.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-04-01", "2025-04-05", "En Ligne"),
("Exposition d'art 3", "Exposition d'art contemporain","https://images.pexels.com/photos/2215609/pexels-photo-2215609.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-04-15", "2025-04-20", "Reims"),
("Exposition d'art 4", "Exposition d'art street art","https://images.pexels.com/photos/1194420/pexels-photo-1194420.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-05-01", "2025-05-05", "Marseille"),
("Exposition d'art 5", "Exposition d'art web","https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-05-15", "2025-05-20", "En Ligne"),
("Exposition SUPP3", "Exposition d'art abstrait", "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-11", "2025-03-23", "Lille"),
("Exposition SUPP2", "Exposition d'art abstrait", "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-11", "2025-03-22", "Lille"),
("Exposition SUPP1", "Exposition d'art abstrait", "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-11", "2025-03-21", "Lille"),
("Exposition SUPP4", "Exposition d'art abstrait", "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-11", "2025-03-20", "Lille"),
("Exposition d'art 6", "Exposition d'art abstrait", "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-11", "2025-03-19", "Lille");


INSERT INTO event_artwork(event_id, artwork_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11);

CREATE TABLE likes (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  user_id INT NOT NULL,
  artwork_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
  FOREIGN KEY (artwork_id) REFERENCES artwork(id) ON DELETE CASCADE
);

INSERT INTO likes(user_id, artwork_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 4),
(4, 4),
(5, 5),
(6, 8),
(7, 12),
(8, 12),
(9, 12),
(10, 12),
(7, 8),
(1, 18),
(2, 18),
(3, 18),
(4, 18),
(5, 18),
(6, 18),
(7, 18),
(8, 18),
(8, 39),
(9, 39),
(10, 39),
(11, 39),
(12, 39),
(7, 39);


CREATE TABLE follows (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  follower_id INT NOT NULL,
  following_id INT NOT NULL,
  UNIQUE KEY unique_follow (follower_id, following_id),
  FOREIGN KEY (follower_id) REFERENCES user(id) ON DELETE CASCADE,
  FOREIGN KEY (following_id) REFERENCES user(id) ON DELETE CASCADE
);
CREATE TABLE comment (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  user_id INT NOT NULL,
  artwork_id INT NOT NULL,
  comment_text VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
  FOREIGN KEY (artwork_id) REFERENCES artwork(id) ON DELETE CASCADE
);

INSERT INTO comment(user_id, artwork_id, comment_text) VALUES
(1, 1, "Superbe oeuvre !"),
(2, 1, "Merci pour votre commentaire !"),
(3, 1, "Je suis très content de cette oeuvre !"),
(4, 1, "Merci pour votre commentaire !"),
(5, 1, "Je suis très content de cette oeuvre !");


