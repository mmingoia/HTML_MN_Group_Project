
# Group Project

### Link to Voter Turnout Dashboard
https://voterturnoutdashboard.herokuapp.com/

### Link to Google Slides Presentation

Link to the current google slides presentation - https://docs.google.com/presentation/d/1oixOSu95qCcIpbezFxn23Q6gKf3iapaZ3pV9jCNC29s/edit?usp=sharing

### Team Members
-Hannah Gonzalez

-Luis Rovira

-Mike Mingoia

-Mohammad Minhas

-Natalia Kuznetsova

-Tim Smith 

# Voter Turnout 

The reasons our team chose the topic of “Vote Turnout Analysis” was because we think this is something interesting concerning the USA elections. When discussing this topic with the team we asked ourselves how high the voter Turnout in the elections is and why has this number not been able to change in a long time. Knowing that the US has had a 45.1% voter Turnout, we decided to analyze different areas of this data to find out why this is a problem.  

![Vote Turnout](https://github.com/mmingoia/HTML_MN_Group_Project/blob/main/Images/election-day-1440x550.png)

## Questions?

With this project we will be asking the following questions in the analysis:

-Which contributing factors are most significant in determining voter turnout within the United States?

-How can we help change this in the future?

-Are the laws of each state affecting the voter turnout?

## Reasons why we selected this topic:

- When discussing this topic with the team we asked ourselves how high the voter Turnout in the elections is and why has this number not been able to change in a long time. 

- Knowing that the US has had a 45.1% (2016) voter Turnout, we decided to analyze different areas of this data to find out why this is a problem.

## Source of data

Our primary data sources are a combination of government data and privately funded studies:

-The United States Census Bureau

-Election Prediction Indicators from MITfz 

-United States Elections Project

-Voter Turnout Data


## Communication Protocols:
We as a group will communicate though our Slack Channel, during class and after class hours. During our time we will discuss the outline, tasks for each member, and assistance as needed to complete the segment on time.

![Vote Turnout](https://github.com/mmingoia/HTML_MN_Group_Project/blob/main/Images/download.png).  ![Vote Turnout](https://github.com/mmingoia/HTML_MN_Group_Project/blob/main/Images/download.jpg). ![Vote Turnout](https://github.com/mmingoia/HTML_MN_Group_Project/blob/main/Images/download-1.jpg)

## Description of the Data exploration: 

Data was formated from various sources to load into PostgreSQL (Hosted on Amazon RDS)

Data Tables Created in the Database
  - Turnout Data
  - Competitiveness Data - Absolute Margin of Victory in each state for each election
  - Voting laws Data
  - Demographic Data - State by State demographic estimates for each election
  - Reasons for Not Voting Data - Used in dashboard to show national summary of reasons for not voting
  - Turnout Analysis Data 
      Created from 25 Potential Features from Other Tables
      Joined based on “Year-State”
      Table consists of date from the 6 US elections from 2008-2018 (3 Presidential and 3 Midterms)
      
# Phases of the Project: 

## Phase 1
 -This histogram illustrates the per State distribution of turnout rate in the past six elections - from 2008 to 2018.
 -The majority of states have approximately 0.6 turnout.
 -The turnout ranges from 0.28 to 0.78.
 -Our analysis will show the importance of factors contributing to this wide range in turnout.

![Vote Turnout](https://github.com/mmingoia/HTML_MN_Group_Project/blob/lrovira-patch-1/Images/ImagePhase1.PNG)

## Phase 2
Random Forest analysis shows this prioritized list of features as the most important indicators of turnout. The number shows the importance of the feature

![Vote Turnout]()

## Phase 3
These scatterplots for five top features illustrate that application of Linear Regression Model would be less appropriate because there is no linear relationship between the parameters and the target variable.

![Vote Turnout]()

## Technologies and Tools:

-Dashboard
  - Hosted on Heroku
  - Flask app

-Database
  - PostgresSQL(Hosted on Amazon RDS)

-Machine Learning
  - Random Forest Model using Sklearn 

-HTML: Bootstrap & CSS

-Plotly

-Python


## Result of Analysis

We were able to determine top 5 factors for voter turnout:
1. Midterm vs. Presidential
2. Registration 
3. Percentage of African American voters 
4. Percentage of White Voters 
5. Percentage of non-voters due to registration problem

## Recommendation for future analysis 
    
- For our future election voters will gather data based on education and income. 
- Get historical voter data on from each state. 
- How absentee ballots have impacted outcomes major elections. Effect of increased absentee ballots in 2020, will that increase stay, or drop in the future
- How electoral college is in comparison to popular vote from other developed countries. 
- Gather more data of voter trends 
    



