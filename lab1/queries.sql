-- Your analytical queries here
-- Books rated 4.5 or higher
SELECT title, rating, date_finished FROM books_read WHERE rating >= 4.5 ORDER BY rating DESC;

-- Average pages per category
SELECT category, AVG(pages) as avg_pages, COUNT(*) as book_count
FROM books_read
GROUP BY category
ORDER BY avg_pages DESC;

-- Total pages read
SELECT SUM(pages) as total_pages_read FROM books_read;

-- Monthly reading progress
SELECT TO_CHAR(date_finished, 'YYYY-MM') as month, COUNT(*) as books_finished, SUM(pages) as pages_read
FROM books_read
GROUP BY TO_CHAR(date_finished, 'YYYY-MM')
ORDER BY month;

-- Machine Learning books
SELECT title, author, rating FROM books_read WHERE category = 'Machine Learning';
