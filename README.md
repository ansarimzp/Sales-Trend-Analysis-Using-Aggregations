# 📊 Task 6: Sales-Trend-Analysis-Using-Aggregations

## 📝 Objective
The goal of this task is to analyze monthly sales trends and order volumes using SQL aggregation techniques, while also generating additional business insights from a cleaned e-commerce sales dataset.

---

## 📂 Dataset
- **Table Name:** `sales.cleaned_train`
- **Important Fields:**
  - `Order Date` (text in `dd-mm-yyyy` format)
  - `Order ID`
  - `Sales`
  - Other dimensions: `State`, `Region`, `Customer Name`, `Category`, `Sub-Category`

---

## 🧠 Key Concepts Used
- `EXTRACT(YEAR FROM STR_TO_DATE(...))` and `EXTRACT(MONTH ...)` to group by time
- `GROUP BY` for aggregation
- `SUM(Sales)` to calculate total revenue
- `COUNT(DISTINCT Order ID)` to calculate order volume
- `ORDER BY` to sort results
- `LIMIT` to restrict output for focused insights

---

## 📌 SQL Insights Generated

### 1. 📆 Monthly Revenue and Order Volume
Grouped sales and order counts by year and month to identify trends and peak periods.

### 2. 🏆 Top 5 States by Total Sales
Identified states contributing the most revenue.

### 3. 📦 Sales by Category and Sub-Category
Compared revenue across product types to determine best and worst performing categories.

### 4. 👥 Top 5 Customers by Spend
Ranked customers by total purchase value.

### 5. 🌍 Sales Trend by Region
Analyzed sales patterns in each region over time.

### 6. 📅 Monthly Sales for 2015-18
Zoomed in on revenue trends specifically for the year 2015-18.

### 7. 📉 Low-Performing Sub-Categories
Highlighted underperforming product groups for optimization.

---

## 🛠 SQL Platform
- **Database Used:** MySQL
- **Functions Used:** `STR_TO_DATE`, `EXTRACT`, `SUM`, `COUNT`, `GROUP BY`, `ORDER BY`, `LIMIT`

---

## 📤 Deliverables
- `task6_sales_analysis.sql`: All SQL queries used for the analysis
- `results.png`: Screenshot of key result outputs
- `README.md`: Documentation and explanation (this file)

---

## ✅ Outcome
By completing this task, I gained hands-on experience with:
- Time-based data aggregation
- Deriving business insights using SQL
- Handling non-standard date formats
- Structured data analysis for reporting

