# Bellabeat Smart Device Data Analysis and Machine Learning

This project analyzes user data from smart fitness devices (Fitbit-style) to help Bellabeat, a wellness technology company, improve user engagement, personalize features, and guide marketing strategies. The analysis covers data cleaning, exploratory analysis, feature engineering, and machine learning modeling (clustering, regression, classification).

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Data Sources](#data-sources)
3. [Setup & Requirements](#setup--requirements)
4. [Step-by-Step Workflow](#step-by-step-workflow)
   - [1. Data Loading & Merging](#1-data-loading--merging)
   - [2. Data Cleaning](#2-data-cleaning)
   - [3. Exploratory Data Analysis (EDA)](#3-exploratory-data-analysis-eda)
   - [4. Feature Engineering](#4-feature-engineering)
   - [5. Modeling](#5-modeling)
   - [6. Model Evaluation & Visualization](#6-model-evaluation--visualization)
   - [7. Insights & Recommendations](#7-insights--recommendations)
5. [Conclusion](#conclusion)
6. [GitHub Repository](#github-repository)

---

## Project Overview

Bellabeat wants to leverage fitness and lifestyle data to:

- Increase user engagement
- Improve personalized features
- Guide effective marketing strategies

The project uses 18 datasets with daily and minute-level logs of steps, calories, sleep, heart rate, and weight. The workflow includes:

- Data cleaning and merging
- Exploratory data analysis (EDA)
- Feature engineering
- Machine learning: clustering, regression, classification
- Actionable business recommendations

---

## Data Sources

All datasets are in the `data/` folder. Key files include:

| Dataset Name                 | Description                                |
| ---------------------------- | ------------------------------------------ |
| dailyActivity_merged.csv     | Daily steps, distance, calories, intensity |
| dailyCalories_merged.csv     | Daily calories burned                      |
| dailyIntensities_merged.csv  | Daily activity by intensity                |
| dailySteps_merged.csv        | Daily step count                           |
| heartrate_seconds_merged.csv | Heart rate at 5-second intervals           |
| sleepDay_merged.csv          | Daily sleep summary                        |
| weightLogInfo_merged.csv     | Weight, BMI, body fat %                    |
| ...                          | ...and more (see notebook for full list)   |

---

## Setup & Requirements

- Python 3.x
- Libraries: pandas, numpy, matplotlib, seaborn, scikit-learn, functools

Install requirements:

```sh
pip install pandas numpy matplotlib seaborn scikit-learn
```

---

## Step-by-Step Workflow

### 1. Data Loading & Merging

- All 18 CSVs are loaded into pandas DataFrames.
- Time columns are parsed and standardized.
- Datasets are merged on `Id` and `ActivityDate` to create a master DataFrame (`master_df`).

### 2. Data Cleaning

- Missing values are visualized and filled (numeric columns with median).
- Duplicate rows are removed.
- Data types are checked and corrected.
- Unnecessary columns (e.g., `IsManualReport`) are dropped.

### 3. Exploratory Data Analysis (EDA)

- **Univariate Analysis:** Histograms and boxplots for steps, calories, sleep, BMI, etc.
- **Bivariate Analysis:** Scatter plots and regression lines for relationships (e.g., steps vs. calories).
- **Multivariate Analysis:** Correlation heatmaps, bubble plots, and time trends.

### 4. Feature Engineering

- Extract date features (year, month, weekday, weekend).
- One-hot encode categorical variables.
- Create behavioral features:
  - Total active minutes
  - Sleep efficiency
  - Steps per active minute
  - Calories per step
- Create a binary label: `IsActiveUser` (steps > 10,000).

### 5. Modeling

- **Clustering (K-Means):** Segments users into 3 groups (sedentary, moderately active, highly active).
- **Regression (Random Forest):** Predicts calories burned from steps, activity, sleep, BMI.
- **Classification (Random Forest):** Predicts if a user is "active" (10,000+ steps/day).

### 6. Model Evaluation & Visualization

- **Clustering:** Silhouette score (0.636) indicates well-separated clusters.
- **Regression:** R2 = 0.59, RMSE ≈ 258 calories.
- **Classification:** 100% accuracy on test data (possible overfitting).
- Visualizations: Actual vs. predicted plots, confusion matrix, feature importance.

### 7. Insights & Recommendations

- **Activity:** Most users are moderately active; few meet the 10,000-step goal.
- **Sleep:** Active users have better sleep efficiency.
- **Heart Rate:** More active users have healthier heart rates.
- **Recommendations:**
  - Personalized fitness plans by user group
  - Promote sleep tracking
  - Smart alerts for inactivity
  - Calorie prediction banners in app
  - Encourage regular weight/BMI logging

---

## Conclusion

- The project demonstrates how smart device data can drive actionable insights for user engagement and personalization.
- Models can segment users, predict calorie burn, and classify activity levels with high accuracy.
- Recommendations are ready for business implementation.

---

## GitHub Repository

[View the full project and code here](https://github.com/dipankarmajumdar/Bellabeat_Smart_Device_Data_Analysis_and_Machine_Learning.git)
