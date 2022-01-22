# California-School-Success
Analysis of data from districts in California looking for variables related to student success

<b>Description of preliminary data preprocessing</b>: 
We began by joining two tables of school district data hosted on Amazon Web Services. One table featured district demographics, while the other included English/Language Arts and Math test scores. They were joined based on district name. Once uploaded to a Jupyter Notebook, we converted NaaNs to the mean for each column, and renamed columns to eliminate spaces and abbreviate.

<b>Description of preliminary feature engineering and preliminary feature selection</b>:
The model features were chosen because they are commonly among the most discussed for major stakeholders in the education sector, including:

1. Education researchers
2. Education policymakers
3. Journalists writing about education

We omitted features that themselves were also a sort of outcome measure of district performance, such as suspension and chronic absenteeism percentage. We also omitted features that may be collinear with percentage of students qualifying for free/reduced price lunch (such as disadvantaged percentage).

Though we originally planned to create a linear regression model, we determined that a probability model would be more substantive for more audiences. Accordingly, we created binary variables for ELA and Math proficiency with a cut score of 50% proficiency. Districts with half or more of their students scoring proficient on a given exam were coded a "1", and districts with less than half were coded a "0." We chose 50% because it is a common cut score used by analysts when interpreting district performance data.

<b>Description of how data was split into training and testing sets</b>
We used SKLearn script for testing, training, and splitting. This involved a standard scaler to reduce the variance in feature magnitude. We used an 80/20 train/test split proportion, which is standard and is a good fit for our dataset.

<b>Explanation of model choice</b>
We elected to use supervised machine learning models because we have labeled outcome variables (English/Language Arts and Math test scores) that are foundational to evaluating district effectiveness. We also wanted to construct two models to determine which was more accurate based on our data. Thus, you will find a logistic and forest classifier algorithm in our code base.

As mentioned above, we established probability models because it is useful to be able to predict whether a district is more or less likely (based on a set of features) to have 50% or higher students at proficiency. This is a more straightforward measure of district effectiveness than individual scores in relation to one another, which is what a linear model would have produced.

That said, a significant limitation of probability models is, unlike linear models, we would not be able to assess which districts may be over or underperforming based on their demographics and teacher data. It may be interesting to researchers and policymakers to be able to compare predictions and actuals as a means for assessing performance. Our models would not be able to accomplish this.