# <ins>**wholesale-analysis**</ins>
Here is a data analysis project done using kaggle dataset on wholesale advertisements.


![image](https://github.com/user-attachments/assets/ce4f48db-2a08-42d8-8987-995d76d44cc8)


## What is the data set about?
This project analyzes a wholesale dataset obtained from Kaggle, which contains information about advertising campaigns. The dataset includes 211 entries and 14 columns, covering various metrics such as ad set budget, reach, impressions, cost per result, and campaign performance indicators. The goal of this analysis is to uncover insights into the effectiveness of different ad campaigns, identify trends, and provide actionable recommendations for optimizing future campaigns.

## Why choose this data set?
I chose this dataset because it is relatively small and manageable, making it ideal for conducting a comprehensive analysis using a variety of tools. The dataset allowed me to explore, clean, and derive insights effectively while validating my findings.

## Methodology & Tools  
- **Data Pipeline**:Extracted data from kagge. Data cleaning using Python(pandas). Cleaned Dataset loaded into PostgreSQL for querying and Tableau for visualization.  
- **Tools**:
  - Python for descriptive statistics and data cleaning
  - SQL for data exploration and aggregation  
  - Tableau for interactive dashboards  

## Key Objectives

Data Cleaning: Detect and correct errors, inconsistencies, and inaccuracies in datasets; handle missing values; and ensure data quality for reliable analysis.

Exploratory Data Analysis (EDA): Understand the distribution of key metrics, identify missing values, and explore relationships between variables.

Campaign Performance Analysis: Evaluate the effectiveness of campaigns based on results, cost per result, and amount spent.

Budget Optimization: Analyze the relationship between budget allocation and campaign outcomes.

Content and Campaign Type Insights: Determine which types of content and campaigns yield the best results.

## Data Cleaning

![image](https://github.com/user-attachments/assets/3d964127-f798-4340-83b0-5a177313e5d5)

Minimal missing values were observed; redundant columns with constant values were removed, and the 'Cost per Result' metric was recalculated to ensure reliable insights.

![image](https://github.com/user-attachments/assets/fb3c7731-4465-4550-818e-3c7c427f35e0)

![image](https://github.com/user-attachments/assets/cd6f363d-f981-44db-ac5e-fa727ed4db4b)

---

## Exploratory Data Analysis (EDA)  
**Key Findings**:  
- Campaign durations ranged from 1-10 days
- 6 types of result indicators
- 16 Campaign types  

![image](https://github.com/user-attachments/assets/f89fff82-ff81-42bd-b735-5dd6ff6ea55d)

---

## Campaign Performance Evaluation  

### Budget Utilization Patterns  
- **Critical Insight**: 3/5 top campaign types complete showed over-budget performance—every advertisement in these groups spent more than its assigned budget  
- **Recommendation**: Implement real-time budget tracking alerts  

![budgeutil](https://github.com/user-attachments/assets/086f2ddb-e247-4678-a50e-91d2247b315a)



### Duration Impact Analysis  
- 86.2% of campaigns lasted 4 days  
- 7-day campaigns showed:  
  - 28% higher costs than average  
  - Only 9% result improvement  

![image](https://github.com/user-attachments/assets/5253a17a-e4bf-47ac-bfb3-6e8d91b3fd12)


---

## Budget Optimization Opportunities  
**Key Finding**:  
- Real Estate campaigns dominated spending:  
  - 🔹 About 50% of total platform spend
  - 🔹 Accounts for under 10% of the dataset's ad count
  - 🔹 58% higher average budget  
  - 🔹 22% higher cost-per-result  


![image](https://github.com/user-attachments/assets/3fa4eda3-4071-474b-ad71-53388cecebbb)


![image](https://github.com/user-attachments/assets/ddf4c5de-bf81-4e37-9d41-2b51d0851939)

---

## Content & Campaign Type Insights  

### Cost Efficiency Leader  
- **Reach Campaigns**:  
  - 🏆 $250.43 Total spent
  - 6.1M+ impressions  
  - 37% below average CPM (Cost Per Mille)    

![kpi](https://github.com/user-attachments/assets/ea8a1b1d-6a06-4938-b96a-88f6a82ed620)

### High-Cost Analysis  
- **Real Estate Campaigns**:  
  - ⚠️ 89% higher spend than next category  
  - ⚠️ 112% budget overage frequency  

---

## 6. Strategic Recommendations  
1. **Reallocate Resources**: Shift budget from 7-day to 4-day campaigns  
2. **Budget Controls**: Special monitoring for Real Estate campaigns  
3. **Scale Success**: Expand Reach campaign strategies  
4. **Process Improvement**: Mid-campaign budget reviews  





