USE codeup_test_db;


SELECT 'ALBUMS BY PINK FLOYD' AS INFO;
SELECT * FROM ALBUMS WHERE ARTIST = 'PINK FLOYD';


SELECT 'RELEASE DATE OF SGT. PEPPERS LONELY HEARTS CLUB BAND:' AS INFO;
SELECT RELEASE_DATE FROM ALBUMS WHERE NAME =  'Sgt. Pepper' 's Lonely Hearts Club Band';

SELECT 'GENRE OF NEVERMIND' AS INFO;
SELECT GENRE FROM ALBUMS WHERE NAME = 'NEVERMIND';

SELECT 'ALBUMS RELEASED IN THE 90' 'S' AS INFO;
SELECT NAME FROM ALBUMS WHERE RELEASE_DATE BETWEEN 1990 AND 2000;

SELECT 'ALBUMS WITH LESS THAN 20 MILLION SALES:' AS INFO;
SELECT NAME FROM ALBUMS WHERE SALES <= 20;

SELECT 'ALBUMS IN THE ROCK GENRE:' AS INFO;
SELECT NAME FROM ALBUMS WHERE GENRE = 'ROCK';
