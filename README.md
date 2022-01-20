# California-School-Success
Analysis of data from districts in California looking for variables related to student success


Description of preliminary data preprocessing
-Converted NaaNs to means
-Omitted columns that won't be included in the model or couldn't be included in a clustering algorithm (i.e. object strings)
-Tried to omit outliers that skew results

Description of preliminary feature engineering and preliminary feature selection, including their decision-making process
-Features were chosen because they are commonly the most discussed/of interest for:
(1) Education researchers
(2) Education policymakers
(3) Journalists writing about education and the general public

Description of how data was split into training and testing sets
-Using SKLearn

Explanation of model choice, including limitations and benefits
-Elected regression model because we have outcome variables
-Could also do a logistic model by transforming outcome variables into binary