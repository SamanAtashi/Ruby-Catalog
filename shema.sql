CREATE TABLE Genre (
  id INT,
  name VARCHAR(120),
  PRIMARY KEY (id)
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
