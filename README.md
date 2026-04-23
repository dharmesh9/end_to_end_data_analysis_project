# 🛍️ Consumer Purchasing Behaviour — End‑to‑End Data Analysis 💻📊📈

A complete end‑to‑end data analysis project covering a retail‑style customer purchasing dataset. The workflow spans CSV data cleaning and transformation in Python (Jupyter Notebook), database loading in MySQL, SQL‑based exploratory analysis, and visualisation in an interactive Power BI dashboard. Supporting deliverables include a written project report and a presentation deck. 📚🎤

---

## 📁 Repository Structure 📂

```text
consumer_purchasing_behaviour/
│
├── 📄 Raw Data
│   └── dataset.csv                          # Primary transaction‑level data (≈3,900 rows, 19 columns) 🧾
│
├── 🐍 Python & ETL
│   └── Analysis_in_python.ipynb             # Data cleaning, feature engineering, and MySQL load (Jupyter Notebook) 🐍
│
├── 🗄️ SQL Analysis
│   └── analysis_in_mysql.sql                # 100+ analytical queries over table `t1` in MySQL 📊
│
└── 📦 Supporting Materials
    ├── Analysis of Consumer Purchasing Behaviour.pdf             # Written project report (PDF) 📄
    ├── Analysis-of-Consumer-Purchasing-Behaviour.pptx            # Project presentation (PPTX) 🎤
    ├── dashboard.pbix                                             # Interactive Power BI dashboard 📊
    └── dashboard view.pdf                                        # Static PDF view of the dashboard 🖼️
```

---

## 🧾 Project Overview 👀

This project analyses consumer purchasing behaviour from a retail‑style transaction dataset. Starting from a raw CSV file, the data is cleaned and enriched in Python, loaded into a MySQL database, and then analysed in depth using SQL. Insights are further visualised in an interactive Power BI dashboard, supported by a written report and presentation.

---

## 🎯 Objectives 🎯

- Import and clean retail transaction data (`dataset.csv`) using Python. ✨
- Engineer key features such as `age_group` and `purchase_frequency_days`. 🧩
- Load the cleaned data into a MySQL table for scalable analysis. 💾
- Perform 100+ exploratory and business‑oriented queries in MySQL (customers, products, categories, discounts, etc.). 📊
- Build an interactive Power BI dashboard for operational KPIs and customer segments. 📊
- Document findings and recommendations in a formal report and presentation. 📄🎤

---

## 🛠️ Tools & Technologies 🧰

| Tool                    | Purpose |
|-------------------------|---------|
| Python (Pandas, NumPy)  | Data cleaning, feature engineering, and exploratory analysis. 🐍📊 |
| Jupyter Notebook        | Interactive Python environment for `Analysis_in_python.ipynb`. 🧑‍💻 |
| MySQL                   | Relational database for `t1` table and SQL‑based EDA. 💾 |
| SQL                     | 100+ analytical queries in `analysis_in_mysql.sql`. 📊 |
| Power BI                | Interactive dashboard (`dashboard.pbix`) and static PDF export (`dashboard view.pdf`). 📊 |
| Microsoft Word / PDF    | Final written report (`Analysis of Consumer Purchasing Behaviour.pdf`). 📄 |
| Microsoft PowerPoint    | Presentation deck (`Analysis-of-Consumer-Purchasing-Behaviour.pptx`). 🎤 |

---

## 🗄️ Database Setup (MySQL) 💾

The cleaned dataset is loaded into a MySQL table with the following structure.

### Table: `t1`

| Column                    | Description |
|---------------------------|-------------|
| `customer_id`             | Unique customer identifier. 🔢 |
| `age`                     | Customer age. 🎂 |
| `gender`                  | Customer gender. 🚹🚺 |
| `item_purchased`          | Name of the product purchased. 🧥 |
| `category`                | Product category (Clothing, Footwear, Accessories, Outerwear, etc.). 🏷️ |
| `purchase_amount`         | Purchase value in USD. 💰 |
| `location`                | Customer state / province. 🌍 |
| `size`                    | Product size. 🧦 |
| `color`                   | Product colour. 🎨 |
| `season`                  | Season of purchase (Spring, Summer, Fall, Winter). ☀️❄️ |
| `review_rating`           | Customer satisfaction rating (numerical). ⭐ |
| `subscription_status`     | Subscription status (Yes / No). 📬 |
| `shipping_type`           | Shipping method (Express, Free Shipping, 2‑Day, etc.). 🚚 |
| `discount_applied`        | Whether a discount was applied. 🎯 |
| `previous_purchases`      | Number of prior purchases by the customer. 📦 |
| `payment_method`          | Method of payment. 🧾 |
| `frequency_of_purchases`  | Text‑based purchase frequency (Weekly, Monthly, etc.). 📅 |

The table serves as the fact table for all SQL‑based analysis.

---

## ⚙️ Workflow ⚙️

### Step 1 — Data Source 📥
- Source file: `dataset.csv` (≈3,900 rows).
- Contains customer, product, transaction, and behavioural attributes.

### Step 2 — Python Data Cleaning & ETL 🧹🐍
- Open `Analysis_in_python.ipynb` in Jupyter Notebook.
- The notebook:
  - Reads `dataset.csv` with `pandas`.
  - Explores the data (`df.head()`, `info`, `describe`, `isnull()`).
  - Cleans missing `Review Rating` (imputed as median by `Category`).
  - Normalises column names and drops redundant columns.
  - Creates derived features:
    - `age_group` (quantile‑based buckets).
    - `purchase_frequency_days` (mapping text frequencies to numerical days).
  - Connects to MySQL (`sqlalchemy` + `pymysql`) and writes the cleaned DataFrame into table `t1` in database `database9`.

### Step 3 — SQL EDA 📊
- File: `analysis_in_mysql.sql`.
- Contains **100+ analytical queries** over `t1`, grouped by theme:
  - Total orders, revenue, average purchase amount.
  - Product‑ and category‑level performance (most‑purchased, best/worst‑rated, highest revenue).
  - Customer segmentation (new/returning/loyal, high‑value low‑frequency, low‑value high‑frequency, churn‑risk, subscription‑upgraders).
  - Discount and subscription impact on spend and rating.
  - Shipping‑type performance and seasonal patterns.
- Run the script in a MySQL client (e.g., MySQL Workbench or command‑line).

### Step 4 — Visualisation with Power BI 📊
- `dashboard.pbix`:
  - Interactive Power BI dashboard built from the cleaned dataset (`t1` or exported extracts).
  - KPIs on orders, revenue, discounts, ratings, and customer segments.
  - Drill‑down by category, season, location, age group, and shipping type.
- `dashboard view.pdf`:
  - Static PDF export of the main dashboard pages for easy sharing and inclusion in the report.

### Step 5 — Deliverables & Documentation 📄🎤
- `Analysis of Consumer Purchasing Behaviour.pdf`:
  - Written project report summarising objectives, methodology, key findings, and business recommendations.
- `Analysis-of-Consumer-Purchasing-Behaviour.pptx`:
  - Presentation slides useful for project defence, classroom, or board‑room meetings.

---

## 📊 Analysis Areas Covered 📊

### 🧑 Customer Behaviour
- Total orders and unique customers.
- New vs Returning vs Loyal customers.
- High‑value low‑frequency and low‑value high‑frequency buyers.
- Customers who switch categories, repeat products, or buy across seasons.

### 🧥 Product & Category Performance
- Most‑ and least‑purchased items and categories.
- Highest‑ and lowest‑rated products and categories.
- Revenue‑ranking of products and categories.
- Most‑popular items by gender, age group, location, and season.

### 💰 Financial & Discount Insights
- Total and average purchase amount.
- Revenue by category, season, location, and shipping type.
- Percentage of orders and revenue using discounts.
- Impact of discounts on average rating and purchase amount.

### 🧑‍🤝‍🧑 Subscription & Churn
- Average spend and order frequency by subscription status.
- Identification of likely churners (low‑spend, low‑frequency).
- Identification of customers likely to upgrade to subscription (high‑spend, high‑frequency).

---

## 📦 Supporting Materials 📦

These files are final deliverables and **do not contain code**:

- `Analysis of Consumer Purchasing Behaviour.pdf`  
  Full written report detailing the methodology and insights. 📄
- `Analysis-of-Consumer-Purchasing-Behaviour.pptx`  
  Project presentation deck for stakeholder communication. 🎤
- `dashboard.pbix`  
  Interactive Power BI dashboard (requires Power BI Desktop). 📊
- `dashboard view.pdf`  
  Static PDF snapshot of the main dashboard pages. 🖼️

---

## ▶️ How to Run 🔁

1. **Set up MySQL**  
   - Ensure MySQL server is running (e.g., `localhost`).
   - The notebook `Analysis_in_python.ipynb` will create and populate the `database9.t1` table.

2. **Run the Python ETL**  
   - Open `Analysis_in_python.ipynb` in Jupyter Notebook.
   - Run all cells to:
     - Read `dataset.csv`.
     - Clean and enrich the data.
     - Load into MySQL table `t1`.

3. **Execute SQL Analysis**  
   - Run `analysis_in_mysql.sql` in your MySQL client to generate all 100+ analytical insights.  
     Example:
     ```bash
     mysql -u root -p database9 < analysis_in_mysql.sql
     ```

4. **Open the Dashboard**  
   - Open `dashboard.pbix` in Power BI Desktop to interact with the visualisations.
   - Refer to `dashboard view.pdf` for a static view.

5. **Review Documentation**  
   - Read `Analysis of Consumer Purchasing Behaviour.pdf` for the written report.
   - Use `Analysis-of-Consumer-Purchasing-Behaviour.pptx` for presentations.

---

## 👤 Author 🧑

Dharmesh Makwana — [https://github.com/dharmesh9](https://github.com/dharmesh9)
