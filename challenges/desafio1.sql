DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
CREATE TABLE SpotifyClone.plan(
    plan_id INT AUTO_INCREMENT PRIMARY KEY,
      plan_name VARCHAR(50) NOT NULL,
      plan_price DECIMAL(4,2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.artist(
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
      artist_name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.user(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
      user_name VARCHAR(50) NOT NULL,
      user_age INT NOT NULL,
      subscription_date DATE NOT NULL,
    plan_id INT,
      FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plan(plan_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    album_id INT AUTO_INCREMENT PRIMARY KEY,
      album_title VARCHAR(100) NOT NULL,
      release_year YEAR NOT NULL,
    artist_id INT,
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.track(
    track_id INT AUTO_INCREMENT PRIMARY KEY,
      track_title VARCHAR(100) NOT NULL,
      track_length INT NOT NULL,
    album_id INT,
      FOREIGN KEY (album_id) REFERENCES SpotifyClone.album(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.playback_history(
    playback_date DATETIME NOT NULL,
    track_id INT,
      FOREIGN KEY (track_id) REFERENCES SpotifyClone.track(track_id),
    user_id INT,
      FOREIGN KEY (user_id) REFERENCES SpotifyClone.user(user_id),
    PRIMARY KEY (track_id, user_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.followed_artist(
    artist_id INT,
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist(artist_id),
    user_id INT,
      FOREIGN KEY (user_id) REFERENCES SpotifyClone.user(user_id),
    PRIMARY KEY (user_id, artist_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plan (plan_name, plan_price)
VALUES
  ('gratuito', 0.00),
  ('universitario', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);

INSERT INTO SpotifyClone.artist (artist_name)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

INSERT INTO SpotifyClone.user (user_name, user_age, subscription_date, plan_id)
VALUES
  ('Barbara Liskov', 82, '2019-10-20', 1),
  ('Robert Cecil Martin', 58, '2017-01-06', 1),
  ('Ada Lovelace', 37, '2017-12-30', 4),
  ('Martin Fowler', 46, '2017-01-17', 4),
  ('Sandi Metz', 58, '2018-04-29', 4),
  ('Paulo Freire', 19, '2018-02-14', 2),
  ('Bell Hooks', 26, '2018-01-05', 2),
  ('Christopher Alexander', 85, '2019-06-05', 3),
  ('Judith Butler', 45, '2020-05-13', 3),
  ('Jorge Amado', 58, '2017-02-17', 3);

INSERT INTO SpotifyClone.album (album_title, artist_id, release_year)
VALUES
  ('Renaissance', 1, 2022),
  ('Jazz', 2, 1978),
  ('Hot Space', 2, 1982),
  ('Falso Brilhante', 3, 1998),
  ('Vento de Maio', 3, 2001),
  ('QVVJFA?', 4, 2003),
  ('Somewhere Far Beyond', 5, 2007),
  ('I Put A Spell On You', 6, 2012);

INSERT INTO SpotifyClone.track (album_id, track_title, track_length)
VALUES
	(1, 'BREAK MY SOUL', 279),
	(1, "VIRGO'S GROOVE", 369),
	(1, 'ALIEN SUPERSTAR', 116),
	(2, "Don't Stop Me Now", 203),
	(3, 'Under Pressure', 152),
	(4, 'Como Nossos Pais', 105),
	(5, 'O Medo de Amar é o Medo de Ser Livre', 207),
	(6, 'Samba em Paris', 267),
	(7, "The Bard's Song", 244),
	(8, 'Feeling Good', 100);

INSERT INTO SpotifyClone.playback_history (playback_date, track_id, user_id)
VALUES
  ('2022-02-28 10:45:55', 8, 1),
  ('2020-05-02 05:30:35', 2, 1),
  ('2020-03-06 11:22:33', 10, 1),
  ('2022-08-05 08:05:17', 10, 2),
  ('2020-01-02 07:40:33', 7, 2),
  ('2020-11-13 16:55:13', 10, 3),
  ('2020-12-05 18:38:30', 2, 3),
  ('2021-08-15 17:10:10', 8, 4),
  ('2022-01-09 01:44:33', 8, 5),
  ('2020-08-06 15:23:43', 5, 5),
  ('2017-01-24 00:31:17', 7, 6),
  ('2017-10-12 12:35:20', 1, 6),
  ('2011-12-15 22:30:49', 4, 7),
  ('2012-03-17 14:56:41', 4, 8),
  ('2022-02-24 21:14:22', 9, 9),
  ('2015-12-13 08:30:22', 3, 10);

INSERT INTO SpotifyClone.followed_artist (artist_id, user_id)
VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (1, 2),
  (3, 2),
  (2, 3),
  (4, 4),
  (5, 5),
  (6, 5),
  (6, 6),
  (1, 6),
  (6, 7),
  (3, 9),
  (2, 10);
