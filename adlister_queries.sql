USE adlister;

-- TODO: For a given ad, what is the email address of the user that created it?

SELECT email AS 'Email', CONCAT(first_name, last_name) AS 'Name'
FROM users
JOIN users ON users.id=ad.user_id
WHERE users.id=ad.user_id;


-- TODO: For a given ad, what category, or categories, does it belong to?



-- TODO: For a given category, show all the ads that are in that category.



-- TODO: For a given user, show all the ads they have posted.