<<<<<<< HEAD
-- Your analytical queries here
-- Books rated 4.5 or higher
SELECT title, rating, date_finished FROM books_read WHERE rating >= 4.5 ORDER BY rating DESC;

-- Average pages per category
=======
-- Lab 1: Analytical Queries
-- Query 1: All books
SELECT * FROM books_read;

-- Query 2: Count total books
SELECT COUNT(*) as total_books FROM books_read;

-- Query 3: Machine Learning books
SELECT title, author, rating
FROM books_read
WHERE category = 'Machine Learning';

-- Query 4: Books rated 4.5 or higher
SELECT title, rating, date_finished
FROM books_read
WHERE rating >= 4.5
ORDER BY rating DESC;

-- Query 5: Average pages per category
>>>>>>> 74f9f73 (Lab 1: Created books_read table with sample data and queries)
SELECT category, AVG(pages) as avg_pages, COUNT(*) as book_count
FROM books_read
GROUP BY category
ORDER BY avg_pages DESC;

<<<<<<< HEAD
-- Total pages read
SELECT SUM(pages) as total_pages_read FROM books_read;

-- Monthly reading progress
SELECT TO_CHAR(date_finished, 'YYYY-MM') as month, COUNT(*) as books_finished, SUM(pages) as pages_read
FROM books_read
GROUP BY TO_CHAR(date_finished, 'YYYY-MM')
ORDER BY month;

-- Machine Learning books
SELECT title, author, rating FROM books_read WHERE category = 'Machine Learning';
=======
-- Query 6: Total pages read
SELECT SUM(pages) as total_pages_read FROM books_read;

-- Query 7: Monthly reading progress
SELECT
  TO_CHAR(date_finished, 'YYYY-MM') as month,
  COUNT(*) as books_finished,
  SUM(pages) as pages_read
FROM books_read
GROUP BY TO_CHAR(date_finished, 'YYYY-MM')
ORDER BY month;
>>>>>>> 74f9f73 (Lab 1: Created books_read table with sample data and queries)
