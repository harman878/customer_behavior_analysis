# Customer Behavior Data Analytics Project

## Overview

This project analyzes customer behavior and purchasing patterns using Python, PostgreSQL, and Power BI. The goal is to explore the data, identify meaningful customer trends, and turn the findings into actionable business insights through data analysis and visualization.

The project covers the complete data analytics workflow, from data cleaning and exploratory analysis to SQL analysis, dashboard creation, reporting, and presentation.

## Dataset

The dataset contains customer and purchasing information used to analyze:

* Customer demographics and characteristics
* Purchase behavior and spending patterns
* Product preferences
* Purchase frequency
* Customer segments
* Other factors influencing customer behavior

## Tools & Technologies

* **Python** – Data cleaning, preprocessing, and Exploratory Data Analysis (EDA)
* **Pandas & NumPy** – Data manipulation and analysis
* **Matplotlib & Seaborn** – Data visualization
* **PostgreSQL** – SQL-based data analysis and querying
* **Power BI** – Interactive dashboard and data visualization
* **Gamma** – Presentation creation
* **PDF Report** – Detailed documentation of analysis and findings

## Project Workflow

### 1. Data Loading

The dataset was loaded into Python using Pandas for initial inspection and analysis.

### 2. Data Cleaning

The data was cleaned and prepared for analysis by checking for:

* Missing values
* Duplicate records
* Incorrect data types
* Inconsistent or invalid values

### 3. Exploratory Data Analysis (EDA)

EDA was performed to understand customer behavior and identify patterns, trends, and relationships within the dataset.

### 4. SQL Analysis

The cleaned data was analyzed using PostgreSQL. SQL queries were used to answer business questions and extract meaningful insights from the data.

### 5. Power BI Dashboard

An interactive Power BI dashboard was created to visually present key customer behavior metrics, trends, and insights.

### 6. Report & Presentation

The analysis and findings were documented in a detailed PDF report. A presentation was also created to summarize the project, key insights, and business recommendations.

## Dashboard

The Power BI dashboard provides an interactive view of customer behavior and purchasing patterns, helping users explore important metrics and trends through visualizations and filters.

## Key Results

The analysis helped identify important patterns in customer behavior, purchasing preferences, and customer segments. The findings were used to develop data-driven business recommendations that can help businesses better understand their customers and improve decision-making.

## Repository Contents

* `customer_shopping_behavior.csv` – Original dataset
* `customer_behavior.ipynb` – Python data cleaning and EDA
* `customer_behavior_sql.sql` – PostgreSQL SQL queries
* `customer_behavior_dashboard.pbix` – Power BI dashboard
* `customer_behav_pdf.pdf` – Detailed project report
* `Customer-shopping-Behavior-Analysis(2).pdf` – Project presentation

## How to Run

### Python Analysis

1. Clone or download this repository.
2. Install the required Python libraries:

```bash
pip install pandas numpy matplotlib seaborn
```

3. Open `customer_behavior.ipynb` in Python, Jupyter Notebook, or VS Code.
4. Update the dataset path if required.
5. Run the script to perform data cleaning and EDA.

### PostgreSQL Analysis

1. Install PostgreSQL.
2. Create a database and import the cleaned dataset.
3. Open `customer_behavior_sql.sql` in pgAdmin or another SQL editor.
4. Run the queries to reproduce the SQL analysis.

### Power BI Dashboard

1. Open `customer_behavior_dashboard.pbix` using Power BI Desktop.
2. If required, update the data source path.
3. Refresh the data to view the interactive dashboard.

## Conclusion

This project demonstrates an end-to-end data analytics workflow, combining Python, SQL, and Power BI to transform raw customer data into meaningful insights and business recommendations.
