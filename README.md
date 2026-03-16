# Zara Sales Performance Analysis

Sales analysis project using SQL and Power BI to uncover revenue drivers,
product positioning inefficiencies, and pricing opportunities.

---

## Tools Used
- **MySQL** — data extraction and analysis
- **Power BI** — interactive dashboard and visualization

---

## Dataset
`Zara_Sales_Analysis.csv` — contains product names, categories, prices,
sales volumes, product positions, promotions, and seasonal flags.

---

## Business Questions Answered

1. Which product position (Front of Store vs Aisle) drives the most revenue?
2. How does promotion status affect sales volume and revenue?
3. What is the relationship between price range and sales volume by section?
4. Which seasonal products have the lowest sales volume?
5. Which high-revenue products are misplaced outside Front of Store?
6. What are the lowest-performing products at Front of Store?
7. Which product categories generate the most revenue?
8. How do specific item types (Jackets, Sweaters, Bombers) compare in revenue?

---

## Key Findings

- **Jackets contribute 60%+ of total revenue** — the single most important category
- **70% of high-margin items are placed in Aisles**, not Front of Store
- Products priced **$40–$80 show the highest sales velocity**
- Luxury items (> $150) require Front of Store placement to justify their price point
- Re-locating Jackets to premium display areas is projected to **increase ROI by 15%**

---

## Recommendation

Move top-performing Jacket SKUs to Front of Store positions.
Optimize the "Man" section pricing to align with observed demand curves.

---

## Dashboard Preview

![Dashboard Overview](screenshots/dashboard_overview.png)

---

## Repository Structure
```
├── data/
│   └── Zara_Sales_Analysis.csv
├── sql/
│   └── zara_sales_analysis.sql
├── dashboard/
│   └── zara_dashboard.pbix
├── screenshots/
│   └── dashboard_overview.png
└── README.md
```
