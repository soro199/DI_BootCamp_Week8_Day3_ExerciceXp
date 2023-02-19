---- Exercice XP

--- 1.
SELECT f.title, l.name FROM film f LEFT JOIN language l ON f.language_id = l.language_id;

--- 2.

SELECT f.title, l.name FROM film f RIGHT JOIN language l ON f.language_id = l.language_id;

SELECT f.title, f.description, l.name FROM film f LEFT JOIN language l ON f.language_id = l.language_id;

SELECT f.title, f.description, l.name FROM language l LEFT JOIN film f ON f.language_id = l.language_id;


--- 3.
--- A.
CREATE TABLE new_film(lg_nwfid SERIAL PRIMARY KEY, str_nwfname VARCHAR(100));
--- B.
INSERT INTO new_film(str_nwfname)
VALUES ('spiderman no way home'), ('equalizer'), ('les stroupfs'), ('barbie au pays des fée');

--- 4.

CREATE TABLE customer_review(lg_curid SERIAL,
							title VARCHAR(100),
							score SMALLINT,
							review_text VARCHAR,
							last_update TIMESTAMP,
							PRIMARY KEY(lg_curid),
							fk_lg_nwfid INTEGER REFERENCES new_film (lg_nwfid) ON DELETE CASCADE,
							fk_language_id INTEGER REFERENCES language(language_id) ON DELETE CASCADE
							);
							
--- 5.

INSERT INTO customer_review(title,score,review_text,last_update,fk_lg_nwfid,fk_language_id)
VALUES ('critique de ezekiel', 5, 'rsa', current_timestamp, 1, 1), ('critique de emmanuel', 9, 'bien', current_timestamp, 2, 2);

SELECT * FROM customer_review;

SELECT * FROM new_film;

DELETE FROM new_film WHERE lg_nwfid = 2;


						  


