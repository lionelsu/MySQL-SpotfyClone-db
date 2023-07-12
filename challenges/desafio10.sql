CREATE TABLE SpotifyClone.favorite_musics(
  user_id INT,
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.user(user_id),
  track_id INT,
    FOREIGN KEY (track_id) REFERENCES SpotifyClone.track(track_id),
  PRIMARY KEY (user_id, track_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.favorite_musics (user_id, track_id)
VALUES
  (1, 3),
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 7),
  (4, 4),
  (5, 10),
  (5, 2),
  (8, 4),
  (9, 7),
  (10, 3);
