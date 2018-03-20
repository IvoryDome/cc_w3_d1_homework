DROP TABLE playlist_slot;
DROP TABLE guests;
DROP TABLE songs;
DROP TABLE rooms;


CREATE TABLE rooms(
  id SERIAL8 PRIMARY KEY,
  name INT,
  till INT
);

CREATE TABLE guests(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  room_id INT8 REFERENCES rooms(id),
  funds INT
);

CREATE TABLE songs(
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  artist VARCHAR(255)
);

CREATE TABLE playlist_slot(
  id SERIAL8 PRIMARY KEY,
  song_id INT8 REFERENCES songs(id),
  room_id INT8 REFERENCES rooms(id)
);

INSERT INTO rooms (name, till) VALUES (1, 100);
INSERT INTO rooms (name, till) VALUES (2, 70);
INSERT INTO rooms (name, till) VALUES (3, 135);
INSERT INTO rooms (name, till) VALUES (4, 150);
INSERT INTO rooms (name, till) VALUES (5, 172);

INSERT INTO guests (name, room_id, funds) VALUES ('Larry', 3, 70);
INSERT INTO guests (name, room_id, funds) VALUES ('Jerry', 3, 85);
INSERT INTO guests (name, room_id, funds) VALUES ('George', 3, 40);
INSERT INTO guests (name, room_id, funds) VALUES ('Kramer', 2, 100);
INSERT INTO guests (name, room_id, funds) VALUES ('Newman', 2, 65);
INSERT INTO guests (name, room_id, funds) VALUES ('Bob Sacamano', 2, 50);



INSERT INTO songs (title, artist) VALUES ('Bohemian Rhapsody', 'Queen');
INSERT INTO songs (title, artist) VALUES ('Rappers Delight', 'Sugar Hill Gang');
INSERT INTO songs (title, artist) VALUES ('Never gonna give you up', 'Rick Astley');
INSERT INTO songs (title, artist) VALUES ('Skeng', 'The Bug');
INSERT INTO songs (title, artist) VALUES ('Down Under', 'Men At Work');

INSERT INTO playlist_slot (song_id, room_id) VALUES (4, 3);

SELECT * FROM guests;
SELECT * FROM songs;
SELECT * FROM rooms;
SELECT * FROM playlist_slot;
SELECT name FROM guests;


UPDATE guests SET room_id = 4 WHERE name = 'Jerry';
UPDATE guests SET room_id = 4 WHERE name = 'Newman';

SELECT * FROM guests WHERE name = 'Jerry';
SELECT * FROM guests WHERE name = 'Newman';
-- @song6 = Song.new("500 miles", "The Proclaimers")
-- @room1 = Room.new(5, @occupants, @playlist, 6, 5, 100)
