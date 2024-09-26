# ETL Project: Retail Data Analysis
In this project, I performed an ETL (Extract, Transform, Load) process to analyze a retail dataset. Here’s a step-by-step breakdown of the workflow:
1.	Extraction:
Using Kaggle API downloaded the dataset using !kaggle datasets list.
Unzipped the downloaded file using the zipfile library to access the CSV file.
2.	Transformation:
Loaded the CSV data into a pandas DataFrame for analysis.
Handled missing values to ensure data integrity.
Standardized the dataset by transforming column names to lowercase and replacing spaces with underscores.
Created new columns for enhanced data analysis and removed unnecessary columns.
Adjusted data types for specific columns to ensure they were correct for analysis.
3.	Loading:
Established a connection to a MySQL database using SQLAlchemy’s create_engine.
Loaded the cleaned and transformed DataFrame into the database for further operations.
4.	Analysis:
Developed SQL queries to extract insights from the data, facilitating deeper analysis of retail trends.
This project demonstrates my ability to manage data workflows and prepare datasets for analysis, making it a valuable addition to my data engineering skill set.
