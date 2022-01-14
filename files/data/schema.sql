CREATE TABLE Author(
  id                 BIGSERIAL PRIMARY KEY,
  first_name         VARCHAR(100),
  last_name          VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE Game(
  id                BIGSERIAL PRIMARY KEY,
  author_id         INT,
  genre_id          INT,
  last_played_at    DATE,
  publish_date      DATE,
  archived          BOOLEAN,
  label_id          INT,
  multiplayer       BOOLEAN,
  PRIMARY KEY (id),
  FOREIGN KEY (author_id) REFERENCES Author(id),
);