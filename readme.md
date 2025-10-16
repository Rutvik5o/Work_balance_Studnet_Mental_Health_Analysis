Student Depression & Well-being Analysis 📊
This project performs an in-depth analysis of the factors contributing to depression among students. Using a dataset of ~28,000 students, we explore the relationships between academic life, personal habits, and mental health outcomes through data cleaning, SQL querying, and Python-based data visualization.

📂 Project Structure
datacleaning.ipynb: Jupyter Notebook containing the Python code for all data cleaning and preprocessing steps.

final_data_clean.csv: The final, cleaned dataset ready for analysis.

ProjectISQLPart-1.sql: SQL script with queries used for initial data exploration and insight gathering.

task2.ipynb: Jupyter Notebook for performing specific data manipulation tasks using Python (Pandas).

visulization.ipynb: Jupyter Notebook containing the Python code for generating all data visualizations.

Presentation.pptx: Presentation file outlining the project tasks and initial data overview.

🛠️ Tools and Technologies
Database: SQL Server

Data Analysis: Python (Pandas, NumPy)

Data Visualization: Python (Matplotlib, Seaborn)

Environment: Jupyter Notebook

📋 Methodology
Data Cleaning: The initial dataset was rigorously cleaned to ensure data quality. Key steps included:

Handling missing values (e.g., filling Financial Stress NaNs with the mean).

Correcting data types for numerical analysis.

Transforming categorical data (e.g., 'Sleep Duration') into numerical formats.

Validating data and removing inconsistencies (e.g., standardizing city names, removing stray characters from 'Degree').

Exploratory Data Analysis (EDA): Initial insights were gathered using SQL to query the database for patterns related to academic pressure, CGPA, sleep, and diet.

Insight Generation & Visualization: Advanced analysis and visualization were performed in Python to uncover deeper insights. This included creating new metrics like a Composite Student Stress Score to provide a holistic view of the pressures students face.

💡 Key Insights
This analysis revealed that the student mental health crisis is driven primarily by a collapse in fundamental well-being rather than academic pressure alone.

Severe Sleep Deprivation is the Biggest Red Flag: There is a powerful and direct correlation between getting less than 5 hours of sleep and the likelihood of depression. This was the most significant predictor in the dataset.

Financial Stress is a Major Cause of Depression: A student's financial worries are a primary driver of their mental health. Higher financial stress is strongly linked to a higher probability of depression.

Young Women are a High-Risk Group: Visualizations show that female students, particularly in their final years of school ('Class 12'), are disproportionately affected by depression and suicidal thoughts.

A Holistic "Stress Score" Predicts Academic Performance: When academic pressure, financial stress, and sleep deprivation are combined into a single score, it becomes clear that as total life stress increases, a student's ability to achieve a high CGPA dramatically decreases.

Healthy Habits Matter: Students with healthier dietary habits reported higher overall study satisfaction, linking physical well-being to academic engagement.