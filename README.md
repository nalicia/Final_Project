
# Predicting Housing Value Within the Suburbs of Boston, Massachusetts


## Data Source
Dataset: Data collected in 1978 for homes from various suburbs in Boston, Massachusetts. There are 507 entries that include 20 features. 
<!-- Augmented Dataset is from -->

## Questions the team hopes to answer with data
What would be the median value for a home in 2022? 

## Reasoning behind selection
Our first choice of dataset, NOAA Storm Events Dataset, upon further research, was poorly fit for a machine learning model. Using a Time-Series analysis, such as Autoregressive Integrated Moving Average, was ultimately not going to work well since the dataset does not have consistent, time-stamped data. 

With one week of work down, we decided to pivot to a dataset that has been successfully used in the past. The Boston Housing Data was our choice because it had a clear set of features and would allow us to move onto the technical phases of the project. 


# Data Exploration Phase
<!-- NOAA Dataset and Time-Series Analysis notes to be added by Chris -->

Applied the Pearson Standard Correlation Coefficient method and mapped the results onto a heatmap. The heatmap provides a visual method to see the connections between the features. 

![Standard Correlation Heatmap](Resources/EDA_Heatmap.png) 

- Features MEDV, RM, INDUS, NOX, TAX, AGE, RAD, LSTAT, DIS, TRACT, CRIM are significant. The non-significant features have been dropped from the dataframe. 
- Feature MEDV has been multiplicative scaled to account for market inflation (x1000)

<!-- Add information on work done in R -->

#### Technologies, languages, tools, and algorithms used in Data Exploration Phase
- Python
- Juypter Notebooks
- R
- Pearson Standard Correlation Coefficient
- Spearman Rank Correlation

# Analysis Phase

Based on the results of the Data Exploration Phase, we decided to use a Linear Regression machine learning model to test and train the data set. 


## Description of preliminary data preprocessing

## Description of preliminary feature engineering and preliminary feature selection, including the decision-making process
based on r score value from Linear Regression
graphs 

## Description of how data was split into training and testing sets

## Explanation of model choice, including limitations and benefits

## Description of how the model was trained (or retrained, if the team is using an existing model)

## Description of confustion matrix, including final accuracy score

#### Technologies, languages, tools, and algorithms used in Analysis Phase
- Python
- Juypter Notebooks
- R
- Linear Regression
- Scikit learn machine learning library in Python for predictive data analysis.



# Database Component
This project will utilize a Postgres type relational database  to be administered through the pdAdmin platform. It may be set up as an open source AWS database for accessability reasons. The database will hold multiple source and result tabular datasets for the different project components. 

<!-- Holds static data, interfaces with project (i.e. updates), 2+ tables, 1 join, 1 connection string -->


# Dashboard/Presentation Component

- Link to the final Dashboard (tableau public) <!-- Need to add -->

- Link to presentation slides <!-- Need to add -->

#### One question: If you had more time, where would you like to investigate for finer tuning? Keep this in mind as the presentation is being put together since it could be a really strong talking point.

# Team Communication Protocols
We decided we would primarily use the scheduled class time for the bulk of creating our project. As well as slack anytime a team member has a question. If needed we will find time outside of class to host meetings.

## Authors
> Becca Mae Hinkle | Chris Newell | Nalicia Tilman | Will Wilson

> April 2022