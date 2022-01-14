CREATE TABLE Genre (
  id INT,
  name VARCHAR(120),
  PRIMARY KEY (id)
);

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

CREATE TABLE item (
  id INT,
  publish_date DATE,
  archived BOOLEAN,
  PRIMARY KEY (id),
  CONSTRAINT genre_id
    FOREIGN KEY (genre_id)
      REFERENCES Genre(id),
);

CREATE TABLE music_album (
  id INT,
  name VARCHAR(120),
  on_spotify VARCHAR(120),
  PRIMARY KEY (id),
  CONSTRAINT id
    FOREIGN KEY (id)
      REFERENCES item(id)
);

CREATE TABLE books(
  id INT GENERATED ALWAYS AS IDENTITY,
  publisher CHAR(50),
  cover_state CHAR(10),
  published_date DATE,
  archived BOOLEAN,
  author_id INT,
  label_id  INT,
  FOREIGN KEY(author_id) REFERENCES authors(id),
  FOREIGN KEY(label_id) REFERENCES labels(id),
  PRIMARY KEY(id)
);

CREATE TABLE labels(
  id INT GENERATED ALWAYS AS IDENTITY,
  title CHAR(50),
  color CHAR(50),
  PRIMARY KEY(id)
);
