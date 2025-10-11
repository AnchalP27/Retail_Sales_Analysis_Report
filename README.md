**🛍️ Retail Sales Analysis Dashboard (2022–2023)**



📊 **Overview**



This Power BI dashboard provides an in-depth analysis of retail sales performance across 2022 and 2023.

It tracks key business metrics such as total sales, profit margin, quantity sold, average order value, and COGS ratio to help identify sales trends and customer insights.



🎯 **Key Insights**



💰 Total Sales: ₹911.72K



📈 Profit Margin: 79.19%



🧾 COGS Ratio: 20.81%



👥 Top Performing Age Group: 46–60 years



🕒 Peak Sales Hour: Around 19:00 hrs



🗓️ Yearly Comparison: Consistent growth observed between 2022–2023





📅 **Dashboard Highlights**



Sales Trend by Year, Month, and Day



Sales Breakdown by Category, Gender, and Age Group



Hourly Sales Analysis



Dynamic Filtering by Gender, Category, and Age Group



Drill-through Capability from Date Hierarchy (Year → Month → Day)





⚙️ **Metrics Defined**

Metric	Description	Formula

Total Sales	Overall sales revenue	SUM(Sales\[Total\_Sales])

Profit Margin (%)	Percentage of profit from sales	(Profit ÷ Total Sales) × 100

COGS Ratio (%)	Cost of Goods Sold as a % of Sales	(COGS ÷ Total Sales) × 100

Average Order Value (AOV)	Average revenue per transaction	Total Sales ÷ Total Transactions





🧩 **Data Model**



Fact Table: Sales



Dimension Tables: Date, Customer, Product, and Category



Relationships:



Sales\[CustomerID] → Customer\[CustomerID]



Sales\[ProductID] → Product\[ProductID]



Sales\[Date] → Date\[Date]





🖥️ **Tools Used**



Microsoft Power BI



Microsoft Excel / CSV (for data source)



MS SQL



DAX (for measures and KPIs)





🚀 **How to Use**



Download the .pbix file from this repository.



Open it in Power BI Desktop.



Refresh the data source if needed.



Interact with filters, slicers, and drill-throughs to explore insights.





📎 **Project Files**



Requirements - Retail\_Sales\_Analysis\_Requirements



Retail\_Sales\_Analysis.pbix – Power BI Dashboard File



README.md – Project Documentation



Dataset.csv – Retail Sales Analysis\_utf



MS SQL - SQLQuery.sql



Dashboard screenshot - Retail\_Sales\_Analysis\_Dashboard\_Snapshot





✨ **Author**



Anchal Prasad

Power BI Developer





🌐 **Connect**



📧 Email: anchalprasad01@gmail.com

💼 LinkedIn: www.linkedin.com/in/anchal-prasad

