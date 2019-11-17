/*SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name
from titles
join titleauthor on titles.title_id = titleauthor.title_id
join authors on authors.au_id = titleauthor.au_id
join publishers on titles.pub_id = publishers.pub_id*/

/*#challenge 2
SELECT authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name
Select Count (titles.title_id)
from titles 
group by titleauthor.au_id;*/

SELECT authors.au_id, authors.au_lname, authors.au_fname, sales.qty
FROM titles 
join titleauthor on titles.title_id = titleauthor.title_id
join authors on authors.au_id = titleauthor.au_id
Count (sales.title_id)
order by titleauthor.au_id



