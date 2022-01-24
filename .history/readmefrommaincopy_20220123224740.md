# California-School-Success
Analysis of data from K12 school districts within California, identifying variables related to student success.

**Google Slides Presentation**: https://docs.google.com/presentation/d/1F3YFfgeGMhiJDUFC4spqUofL4Du3HyZ9O8j708NnECc/edit#slide=id.ge9090756a_1_267

#### Topic: Educational research

Increasing the effectiveness of our public schools has long been a strong desire for tax payers, legislators, regulators, and community stakeholders. Effectively using collected tax revenue to increase our public school performance is a strong desire of all the citizenry. Public education reform has been the subject of ongoing legislation for decades and there's still work to do. As a group, we are deeply interested in what sorts of measurable data correlates with student success. If so, are any of those correlations predictive? Finally, what can we suggest in regards to re-structuring current districts or setting up successful ones in the future based on our findings.

**Research Questions:**

- What demographic, budgetary, and workforce-related variables are correlated with student success?
- How is per pupil spending distributed across California school districts? By region? NorCal, SoCal, CV, etc.

**District Data**: click [here](https://docs.google.com/spreadsheets/d/1L-_kRhlbA8bhKE99NOrL8IEGfn16WN_a/edit#gid=1976575567).

**Variables:**

- Outcome/target:

  - SBAC scores (for one subject)
  - SBAC scores (for both subjects, combined)

- Predictors/features:
  - Free/reduced lunch %
  - Per pupil spending
  - District size
  - Teacher salary (average)
  - Average years of teaching
  - Teacher-to-student ratio

### Communication Protocols

- Primary communication on Slack group 9
- Sensitive communication on Slack private message group
- Exchanged phone numbers to be used as added layer of communication. Everyone agreed that text messaging would be an acceptable form of communication.
- Set up zoom for team meetings
- Meetings held regularly on class days, including office hours on Saturday mornings, and on agreed upon dates/times as needed.

### ML Model Updates

<b>Description of preliminary data preprocessing</b>: 
We began by joining two tables of school district data hosted on Amazon Web Services. One table featured district demographics, while the other included English/Language Arts and Math test scores. The tables were joined based on district name. Once uploaded to a Jupyter Notebook, we converted NaaNs to the mean for each column, and renamed columns to eliminate spaces and abbreviate.

<b>Description of preliminary feature engineering and preliminary feature selection</b>:
The model features were chosen because they are commonly among the most valued by major stakeholders in the education sector, including:

1. Researchers
2. Policymakers
3. Journalists writing about education

We omitted features that themselves were also a sort of outcome measure of district performance, such as suspension and chronic absenteeism percentage. We also omitted features that may be collinear with percentage of students qualifying for free/reduced price lunch (such as disadvantaged percentage).

Though we originally planned to create a linear regression model, we determined that a probability model would produce more substantive results for more audiences. Accordingly, we created binary variables for ELA and Math proficiency with a cut score of 50% proficiency. Districts with half or more of their students scoring proficient on a given exam were coded a "1", and districts with less than half were coded a "0." We chose 50% because it is a common cut score used by analysts when interpreting district performance data.

<b>Description of how data was split into training and testing sets</b>
We used SKLearn script for testing, training, and splitting the data. This involved use of a standard scaler to reduce the variance in feature magnitude. We used an 80/20 train/test split proportion, which is standard and appropriate for our dataset.

In terms of model strength, we observed that the random forest classifier had slightly better results for predicting district results for both exams. For predicting district ELA scores, the random forest classifier held a narrow edge in terms of accuracy score (.78) over the logistic model (.77). And for Math scores, the random forest classifier topped the logistic model by about .2 of a score (.91 to .89).

<b>Explanation of model choice</b>
We elected to use supervised machine learning models because we have labeled outcome variables (English/Language Arts and Math test scores) that are foundational to evaluating district effectiveness. We also wanted to construct two models to determine which was more accurate based on our data. Thus, you will find both a logistic regression and forest classifier algorithm in our code base.

As mentioned above, we established probability models because it is useful to be able to predict whether a district is more or less likely (based on a set of features) to have 50% or higher students at proficiency. This is a more straightforward measure of district effectiveness than individual scores in relation to one another, which is what a linear model would have produced.

That said, a significant limitation of probability models is, unlike linear models, we would not be able to assess which districts may be over or underperforming based on their demographics and teacher data. It may be interesting to researchers and policymakers to be able to compare predictions and actuals as a means for assessing performance. Our models - which are based on classifying binary results - would not be able to accomplish this.