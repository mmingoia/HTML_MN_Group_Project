# HTML_ML_Group_Project
UT DA HTML_ML_Group_Project

NataliaKuznetsova:

## SEGMENT 1

1.	I’ve created S3 bucket with public access and saved one file with data – 
“epi indicators-all years.csv”
https://s3.console.aws.amazon.com/s3/buckets/ivote/?region=us-east-2&tab=overview

2.	Created a new election.ipynb file and read two csv files with data sources: 1) saved by Mike on Github, created df.
2) abovementioned file saved on aws.amazon.com, created df1.

3.	Collaborated with Hannah, so we prepared cleaned data for the df – first file with data (Hannah) and df1 – second file with data and implemented Linear Regression Model.

4. Found the datasets listed below
    "epi indicators-all years.csv"
    "state indicators 2018.csv"
    "TexasPopulation2016_alldata.csv"
    "EAVS 2016 Final Data for Public Release v.3.csv"
    
## SEGMENT 2    
    
1. With SQLAlchemy module I've created database engine and was able to access PostgreSQL data using read_sql(). File election.ipynb

2. Apllied Multiple Linear Regression Model and Random Forest Regressor to two datasets that contains 150 rows and 306 rows (only with EPI indicators). Calculated accuracy, reviewed outcome.

3. In order to increase dataset by including mid-term elections of 2010, 2014, 2018, I've found raw data and calculated the parameters.
- Republican-Democrats competitiveness.
 https://www.fec.gov/introduction-campaign-finance/election-and-voting-information/
 - Demographic data for  years (Table 4b):
  www.census.gov
  
Files "tables10 mod.xlsx", "tables2014 mod.xls" and "federalelections2018 mod.xlsx" are related to Competitiveness. Refer to "Table 2. GE votes by party" tab.
Files "table04b_2010 mod.xlsx", "table04b 2014 mod.xlsx", "table04b 2018 mod.xlsx" reflect demographic data, refer to Summary tab, columns J to P.

 4. Prepared slide 7 on the google-slide Presentation.


## SEGMENT 3   

1. Created ML-Model branch. Updated the Code, file election.ipynb, since we included datasets for three more years (midterm elections).

2. Compared two models - Linear Regression and Random Forest Models.

3. Based on the analysis using Random Forest, determined five most impoirtant features, generated a new file with possible combination of these features (simulation.csv).
   Firstly I created an Excel file with five top feautures: midterm_s - 2 possible values, "pct_reg_of_vep_vrs_s" - 5 values, "percentcitizenblack_s" -6 values, "percentcitizenwhite_s" - 6 values, "nonvoter_reg_pct_s" - 14 values. So the entire new dataset with simulated data contains 5040 rows. (2*5*6*6*14= 5040). Using this new dataset I did run Random Forest Model and generated predicted turnout. Uploaded the dataframe to our sql database, creating new table named turnout_pred.

4. Created slides 8 and 9 "Analysis phase of the project".



References:
1)	Replication Data for the Elections Performance Index and supporting files
https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/9UF1ZM
dataset:
https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/42MVDX
https://electionlab.mit.edu/research/projects/election-performance-index
https://electionlab.mit.edu/ - Massachusetts Institute of Technology
2)	Demographics of Texas:
https://demographics.texas.gov/Data/TPEPP/Estimates/
3)	The U.S. Election Assistance Commission
https://www.eac.gov/research-and-data/datasets-codebooks-and-surveys
4)	Pew Research Center
https://www.pewresearch.org/politics/2018/08/09/an-examination-of-the-2016-electorate-based-on-validated-voters/#how-did-2016-voters-and-nonvoters-compare


