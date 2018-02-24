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
-- SELECT * FROM friends; [worked!]


-- Jane Doe just got married! Her new last name is Smith. Update her record in your database.
UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;
-- SELECT * FROM friends; [worked!]


-- Add a new column to your table named email.
ALTER TABLE friends
ADD COLUMN
email TEXT;
-- SELECT * FROM friends; [worked!]


-- Update the email address for each friend in your table. Jane Doe's email is jdoe@example.com.
UPDATE FRIENDS
SET email = 'jdoe@example.com'
WHERE id = 1;

UPDATE friends
SET email = 'biggie@datflowdoe.com'
WHERE id = 2;

UPDATE friends
SET email = 'falsetto@errday.com'
WHERE id = 3;

UPDATE friends
SET email = 'blackmamba@baller.com'
WHERE id = 4;
-- SELECT * FROM friends; [worked!]


-- Jane Doe is not a real person. Remove her from friends.
DELETE FROM friends
WHERE id = 1;

SELECT * FROM friends;
