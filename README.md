# Rainfall-Analytics-Dashboard


## Problem Statement

This dashboard helps analyze agricultural and weather-related data by visualizing rainfall patterns, temperature, humidity, and crop yield across different locations and years. It enables farmers, researchers, and policymakers to identify environmental trends that influence agricultural productivity and make informed decisions.

The project implements an end-to-end cloud analytics pipeline using **Amazon S3**, **Snowflake**, and **Power BI**. The dataset is stored in Amazon S3, loaded into Snowflake through a Storage Integration and External Stage, and visualized in Power BI using interactive dashboards.

The dashboard currently answers the following business questions:

- How does rainfall vary across different locations and years?
- How does temperature change across different regions?
- What are the humidity trends in different locations?
- Which locations produce the highest crop yields?
- How do weather conditions influence agricultural production?

---

# Steps Followed

- Step 1 : Uploaded the agricultural dataset to Amazon S3.

- Step 2 : Created an AWS IAM Role and configured secure permissions.

- Step 3 : Connected Amazon S3 with Snowflake using Storage Integration and External Stage.

- Step 4 : Loaded the dataset into Snowflake using SQL and the COPY INTO command.

- Step 5 : Connected Power BI Desktop with Snowflake.

- Step 6 : Imported the dataset into Power BI.

- Step 7 : Verified data quality by checking for:
  - Missing values
  - Duplicate records
  - Incorrect data types
  - Inconsistent values

- Step 8 : Performed data cleaning and transformation using Power Query.

- Step 9 : Built interactive dashboard pages for:
  - Rainfall Analysis
  - Temperature Analysis
  - Humidity Analysis
  - Yield Analysis

- Step 10 : Added slicers and interactive filters for data exploration.

- Step 11 : Applied consistent formatting and dashboard design principles.

---

# Dashboard Snapshot

## Rainfall Analysis

<img width="1169" height="694" alt="Image" src="https://github.com/user-attachments/assets/994746d3-f5bf-41ea-bf83-d5fca5054538" />

---

## Temperature Analysis

<img width="1166" height="720" alt="Image" src="https://github.com/user-attachments/assets/f100df97-e9d9-4835-a783-b99304b07b33" />

---

## Humidity Analysis
<img width="1176" height="690" alt="Image" src="https://github.com/user-attachments/assets/981ffe49-5a45-491b-b132-7150879b8159" />

---

## Yield Analysis
<img width="1168" height="687" alt="Image" src="https://github.com/user-attachments/assets/7e7e095b-de56-4f17-9d52-99a24588b937" />

---

# Insights

### [1] Rainfall Analysis

- Compare rainfall across different locations.
- Analyze yearly rainfall trends.
- Identify high and low rainfall regions.

---

### [2] Temperature Analysis

- Compare temperature variations across locations.
- Analyze yearly temperature trends.

---

### [3] Humidity Analysis

- Understand humidity distribution across different regions.
- Compare humidity trends over time.

---

### [4] Yield Analysis

- Compare agricultural yield across locations.
- Identify regions with higher crop productivity.

---

### [5] Interactive Features

- Interactive slicers
- Cross-filtering
- Dynamic visualizations
- Tooltips

allow users to explore agricultural data efficiently.

---

# Tools & Technologies Used

- Microsoft Power BI
- Snowflake
- Amazon S3
- AWS IAM
- SQL
- Power Query
- DAX

---

# Skills Demonstrated

- Cloud Data Integration
- AWS S3
- Snowflake Data Warehouse
- SQL
- ETL Pipeline
- Power Query
- Data Cleaning
- Data Visualization
- Dashboard Design
- Business Intelligence

---

# Author

**Ankit Jhuria**

B.Tech Electrical Engineering

National Institute of Technology Silchar

**GitHub:** https://github.com/ankitjhuria159

**LinkedIn:** https://www.linkedin.com/in/ankit-jhuria-2aa293291
