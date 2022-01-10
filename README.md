# California-School-Success
Analysis of data from school districts within California, identifying variables related to student success.

## ML Model Overview

District Data, click [here](https://docs.google.com/spreadsheets/d/1L-_kRhlbA8bhKE99NOrL8IEGfn16WN_a/edit#gid=1976575567).

### Model 1: Linear Regression

**Overview:**
Per pupil spending is one of the most commonly-used indicators to analyze correlations between K-12 education spending and student learning. We’d like to explore how per pupil spending in California might predict student achievement while holding constant district size and the percentage of students who qualify for free/reduced price lunch. 

**Research Question:**
What is the association between per pupil spending and achievement, holding constant district size and %FRL?

**Variables:**
- Outcome/target: 
  - SBAC scores (for one subject)
  - SBAC scores (for both subjects combined)
- Predictors/features: 
  - Free/reduced lunch %
  - Per pupil spending
  - District size
  - Teacher pay (average)

### Model 2: Clustering Algorithm

**Overview:** 
We’d also like to create a classification system that is more substantive than the standard way of categorizing districts based on spending and family income, which is to split them into quartiles or quintiles. 

**Research Question:**
How can we cluster districts based on district size and percentage FRL?

**Variables:**
- Free/reduced lunch %
- Per pupil spending
