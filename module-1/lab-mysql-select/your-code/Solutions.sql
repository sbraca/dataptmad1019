/*SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name
from titles
join titleauthor on titles.title_id = titleauthor.title_id
join authors on authors.au_id = titleauthor.au_id
join publishers on titles.pub_id = publishers.pub_id*/


/*SELECT 
authors.au_id AS 'AUTHOR ID'
authors.au_lname AS 'LAST NAME'
authors.au_fname AS 'FIRST NAME'
publisher.pub_name AS 'PUBLISHER'
COUNT(titles.title_id) AS 'TITLE COUNT'
FROM titles 
join titleauthor on titles.title_id = titleauthor.title_id
join authors on authors.au_id = titleauthor.au_id
JOIN publisher ON publisher.title_id = titles.title_id
GROUP BY authors.au_id;*/



