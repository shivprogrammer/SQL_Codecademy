-- Create a table named friends with the following columns: id, name, and birthday
CREATE TABLE friends (id INTEGER PRIMARY KEY, name TEXT, birthday DATE);


-- Add Jane Doe to friends. Her birthday is May 19th, 1993.
INSERT INTO friends (id, name, birthday)
VALUES (1, 'Jane Doe', '1993-05-19');
-- SELECT * FROM friends; [worked]


-- Add three more of your friends to friends.
INSERT INTO friends (id, name, birthday)
VALUES (2, 'Biggie Smalls', '1972-05-21');

INSERT INTO friends (id, name, birthday)
VALUES(3, 'The Weeknd', '1990-02-16');

INSERT INTO friends (id, name, birthday)
VALUES (4, 'Kobe Bryant', '1978-08-23');
-- SELECT * FROM friends; [worked]


-- Jane Doe just got married! Her new last name is Smith. Update her record in your database.
UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;
-- SELECT * FROM friends; [worked]


-- Add a new column to your table named email.
ALTER TABLE friends
ADD COLUMN
email TEXT;
