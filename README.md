
# Predicting Housing Value Within the Suburbs of Boston, Massachusetts


## Data Source
Data collected in 1978 for homes from various suburbs in Boston, Massachusetts. There are 507 entries that include 20 features. 
<!-- Augmented Dataset is from -->

## Questions the team hopes to answer with data
What would be the median value for a home in 2022? 

## Reasoning behind selection
Our first choice of dataset, NOAA Storm Events Dataset, upon further research, was poorly fit for a machine learning model. Using a Time-Series analysis, such as Autoregressive Integrated Moving Average, was ultimately not going to work well since the dataset does not have consistent, time-stamped data. 

With one week of work down, we decided to pivot to a dataset that has been successfully used in the past. The Boston Housing Data was our choice because it had a clear set of features and would allow us to move onto the technical phases of the project. 


# Data Exploration Phase
<!-- NOAA Dataset and Time-Series Analysis notes to be added by Chris -->

Applied the Pearson Standard Correlation Coefficient method and mapped the results onto a heatmap. The heatmap provides a visual method to see the connections between the features. 

<img src="https://github.com/nalicia/Final_Project/blob/main/Resources/EDA_Heatmap.png" width=500>
 

- Features MEDV, RM, INDUS, NOX, TAX, AGE, RAD, LSTAT, DIS, TRACT, CRIM are significant. The non-significant features have been dropped from the dataframe. 
- Feature MEDV has been multiplicative scaled to account for market inflation (x1000)

## Focused Dive into Crime Rates 

Some of us are parents and from past experience a main factor for choosing where to live is the crime rate. There is willingness to pay more for a house and sacrifice else where, if that means living in a safer neighborhood. With this mindset we took a closer look into the crime rate. 

Used Ordinary Least Square Regression and Linear Regression to create model 

<img src="https://github.com/nalicia/Final_Project/blob/main/Resources/Crime_Rate_Table.png" width=500>

<img src="https://github.com/nalicia/Final_Project/blob/main/Resources/Regression_Results.png" width=500> 

<img src="https://github.com/nalicia/Final_Project/blob/main/Resources/Residual_Plot.png" width=500> 


<!-- What does R2 and RMSE score mean to us -->
<!-- Add information on work done in R -->

### Technologies, languages, tools, and algorithms used in Data Exploration Phase
- Python including the Pandas and SciKit-Learn libraries
- Juypter Notebooks
- R and the R-Studio applocation
- Pearson Standard Correlation Coefficient
- Spearman Rank Correlation
- Ordinary Least Squares Regression 

# Analysis Phase

The data exploration phase revealed patterns and relationships amongst data variables. As our predictive question is most easily answered as a continuous response variable and that a strong model for linear regression was observed in the exploratory step we decided to formalize the multivariate linear model discovered there into a predictive machine learning function. 

## Description of preliminary data preprocessing


## Description of preliminary feature engineering and preliminary feature selection, including the decision-making process
Feature selection included evaluating the relationships of the input variables with the target variable as well as other considerations. From the augmented data set we removed 'TOWN' AND 'TOWN#' which was descriptive data regarding the census unit and not suited for linear regression. The 'TRACT' and 'OBS' variables were removed for similar reasons - they were identifying information that, although numeric, have no linear organization to them. The problems with using 'Lat' 'Long' fields as feature variables tie into this consideration and it is common practive to exclude raw coordinate information from regression models.  

Additional features were removed for reason of duplicate information and/or other biases. 'CMEDV' was duplicate information in that it applied a corrective across the board to the 'MEDV' value. They represented the same target information. 'TAX' which represents the property tax value is biased in that it is a feature that can be traced directly back to the home value itself. In other words, it is not an independent phenomeon from the target variable.   

Additionally some collinearity may have been present between the 'TAX' and 'RAD' variables so excluding one of these would be best practive anyhow. 

Lastly, the 'B' value was not pushed into the final model. As as user facing tool, it is not a variable we wished for a user to experiment with and is not needed for robust model performance.  

## Description of how data was split into training and testing sets

- In order to predict the outcome we are looking for we need tp make sure we have a statistical understanding of the data. Using linear regression, we create training and test sets. we are trying to find a pattern that best represents all the data points with minimum error. Our random_states is defined so that the splits we create are reproducible. (It is a seed value) Therefore, we train the model using the training set and then apply the model to the test set (to test the accuracy of our training model). In this way, we can evaluate the performance of our model. It estimates how one variable affects the other & allows us to predict a continuous outcome.
- Rmse is the mean scared error the smaller the better.

## Explanation of model choice, including limitations and benefits

Our group chose Linear regression as a basic model to examine if our data can be used as predicative indicator. We specifically focus on which variables have significant contributors to the predicative outcome, and their magnitude. (By cleaning the data and filtering out the features one by one) Using this specific regression we want to determine the strength of predictors, and use it for trend forecasting.

## Description of how the model was trained (or retrained, if the team is using an existing model)

## Description of confusion matrix, including final accuracy score

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

- Link to presentation 
https://www.canva.com/design/DAE_He3hj_o/uoBonR1moy5sQQpYUDiBQg/view?utm_content=DAE_He3hj_o&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink

- Crime Dashboard <!-- Need to add -->
https://public.tableau.com/shared/6NX7948XF?:display_count=n&:origin=viz_share_link


#### One question: If you had more time, where would you like to investigate for finer tuning? Keep this in mind as the presentation is being put together since it could be a really strong talking point.

# Team Communication Protocols
- Scheduled class time used as main collaborative work sessions
- Slack group chat used as an update channel for our individual work
- If needed, additional zoom meetings may be used

## Authors
> Becca Mae Hinkle | Chris Newell | Nalicia Tilman | Will Wilson

> April 2022

