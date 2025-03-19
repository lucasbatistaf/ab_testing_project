# A/B Testing project

In this A/B test experiment, I will develop every step used in the video from [Dan's DataInterview](https://www.youtube.com/watch?v=DUNk4GPZ9bw&list=PLKY9mP2WUbt61RxSTpm6eWkNbBZNUhiUg) and use the dataset from Kaggle [How to do product analytics?](https://www.kaggle.com/datasets/podsyp/how-to-do-product-analytics/data)

The project will be develop using SQL and Python and with a dashboard demonstrating the findings in Tableau.

The dataset includes the fields:
- order_id
- user_id
- page_id
- product
- site_version
- time
- title
- target

## 1. Problem Statement
- Goal of the Experiment: test if the Mobile page has the same User Convertion Rate as the Desktop page 
- Defining the Success Metric: User Conversion Rate per Day
- Period of the experiment: for the period of the experiment I'm using 2 weeks of the data, as suggested by the source video, selecting dates between 01-03-2019 and 14-03-2019.

## 2. Hypothesis Testing
- Hypoteses
    - Null Hypothesis: the average user conversion rate of both types are the same
    - Alternative Hypothesis: the average user conversion rate of the desktop is greater than the mobile
- Setting parameters metrics
    - Using p-value = 0.05
    - Using power level = 0.80

## 3. Design the Experiment
- For this experiment I'm using the dates in 'time', counting how much users with 'user_id' and the title with 'order' value to calculate the conversion rate per day
- As for the types of banners used in the experiment, I'm using only products types of banners, excluding the 'company' banner type, which does not have a conversion associated with.
- Used the column 'site_version' to split the data into 2 groups for testing the hypotheses

## 4. Run the Experiment
- The data of the experiment was initialy explored, understanded and then the dataset was generated with SQL for further analysis with Python.
- In the Python script, I developed the statistical model for the A/B Testing requirements.

## 5. Validity Checks

## 6. Interpret the Results

## 7. Launch Decision
