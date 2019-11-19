

/*SELECT
authors.au_id AS 'AUTHOR ID',
authors.au_lname AS 'LAST NAME',
authors.au_fname AS 'FIRST NAME',
titles.title AS 'TITLES',
publishers.pub_name AS 'PUBLISHER' 
from titles
join titleauthor on titles.title_id = titleauthor.title_id
join authors on authors.au_id = titleauthor.au_id
join publishers on titles.pub_id = publishers.pub_id;*/

/*SELECT
SUM ('TITLE COUNT')
FROM
(
SELECT 
authors.au_id AS 'AUTHOR ID',
authors.au_lname AS 'LAST NAME',
authors.au_fname AS 'FIRST NAME',
publishers.pub_name AS 'PUBLISHER',
COUNT(titles.title_id) AS 'TITLE COUNT'
FROM titles 
join titleauthor on titles.title_id = titleauthor.title_id
join authors on authors.au_id = titleauthor.au_id
JOIN publishers ON publishers.pub_id = titles.pub_id
GROUP BY authors.au_id, publishers.pub_id
Order by authors.au_id DESC
);*/



/*SELECT 
authors.au_id AS 'AUTHOR ID',
authors.au_lname AS 'LAST NAME',
authors.au_fname AS 'FIRST NAME',
Count(sales.qty) AS 'TOTAL TITLES'
FROM titles 
join titleauthor on titles.title_id = titleauthor.title_id
join authors on authors.au_id = titleauthor.au_id
join sales on sales.title_id = titles.title_id
GROUP BY sales.title_id
ORDER BY Count(sales.qty) DESC
limit 3;*/

/*SELECT 
authors.au_id AS 'AUTHOR ID',
authors.au_lname AS 'LAST NAME',
authors.au_fname AS 'FIRST NAME',
Count(sales.qty) AS 'TOTAL TITLES'
FROM authors 
left join titleauthor on authors.au_id = titleauthor.au_id
left join titles on titles.title_id = titleauthor.title_id
left join sales on sales.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY Count(sales.qty) DESC;*/



