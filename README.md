# Netflix-originals-data-analysis-Exploring-trends-and-insights

# Project Overview #
This project involves analyzing the Netflix Originals dataset using MySQL to uncover trends and insights. By performing various SQL operations, such as GROUP BY, HAVING, ORDER BY, LIMIT, JOINS, WINDOW FUNCTIONS, and SUBQUERIES, we aim to explore key patterns in the data. This project provides hands-on experience in SQL-based data analysis, preparing participants for data analyst roles.

# Objective:
The primary objective is to gain insights into Netflix Originals by answering specific queries about genres, IMDb scores, and runtimes. This will demonstrate proficiency in SQL querying, data manipulation, and aggregation techniques.

# Datasets
1. Netflix_Originals
This dataset contains information about Netflix Originals, including:

title: Name of the Netflix Original.

genre_id: ID referencing the genre of the title.

runtime: Duration of the Netflix Original.

imdb_score: IMDb rating of the title.

language: Language of the Netflix Original.

premiere_date: Date the Netflix Original premiered.

2. Genre_Details
This dataset contains:

genre_id: Unique identifier for each genre.
genre: Name of the genre.

# Key Analyses
The project answers the following questions using SQL:

Average IMDb scores for each genre.
Genres with an average IMDb score higher than 7.5.
List of Netflix Originals in descending order of IMDb scores.
Top 10 longest Netflix Originals by runtime.
List of Netflix Originals with their respective genres (using JOIN).
Ranking Netflix Originals based on IMDb scores within each genre (using window functions).
Titles with IMDb scores higher than the average IMDb score of all titles.
Number of Netflix Originals in each genre.
Genres with more than 5 Netflix Originals having IMDb scores higher than 8.
Top 3 genres with the highest average IMDb scores and the number of titles in those genres.

# SQL Techniques Utilized
GROUP BY: To aggregate IMDb scores by genre and calculate averages.
HAVING: To filter results based on aggregate functions (e.g., genres with an average score higher than 7.5).
ORDER BY: To sort results in descending order by IMDb scores or runtime.
LIMIT: To retrieve the top or bottom records (e.g., top 10 longest titles).
JOINS: To combine data from the Netflix Originals and Genre Details tables.
WINDOW FUNCTIONS: To rank Netflix Originals by IMDb scores within their respective genres.
SUBQUERIES: To retrieve titles with IMDb scores higher than the average.
# Results & Insights
Popular Genres: Analysis of which genres consistently produce Netflix Originals with high IMDb scores.
Runtime Insights: Identification of longer Netflix Originals and potential viewer preferences for runtime.
Top Genres by IMDb Score: Exploration of genres with the highest viewer ratings.
# Getting Started
Clone this repository.
Load the datasets into a MySQL database.
Run the SQL queries provided in the project to generate insights.
Review the SQL scripts for detailed query logic.
Prerequisites
MySQL
Basic knowledge of SQL querying.
# Installation
Download and install MySQL.
Import the datasets into your MySQL environment.
Running the Queries
After setting up your MySQL environment, you can run the SQL scripts from the queries.sql file to extract insights and generate analysis results.

# Contributing
Feel free to fork this repository and submit pull requests for any improvements or additional insights!

## Contact
For any questions or collaboration, please reach out via email at [devender3672@gmail.com].

