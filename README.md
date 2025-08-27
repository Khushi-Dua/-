# 🏥 Hospital Data Analytics with SQL

## 📖 Overview
The **Hospital Data Analytics Project** is designed to perform **end-to-end SQL-based data analysis** on a hospital dataset. It focuses on extracting actionable insights related to **patients, doctors, expenses, hospital stays, and departmental performance**.

The project helps in understanding how SQL can be applied to **real-world healthcare data analytics**, making it useful for both **academic learning** and **professional portfolio showcasing**. By leveraging SQL queries, we uncover patterns and trends that can guide **hospital management decisions**, **resource allocation**, and **financial analysis**.

---

## 📂 Project Structure
- `Hospital_Data.csv` → Dataset containing hospital records such as hospital name, location, department, patient counts, doctors count, admission/discharge dates, and medical expenses.
- `Hospital_Data_Analytics.sql` → SQL script that includes:
  - Table creation
  - Data import from CSV
  - Queries to generate insights
- `Hospital Data Analytics with SQL Assignment.pdf` → Assignment document with the problem statements and requirements.

---

## 🛠️ Technologies Used
- **SQL (PostgreSQL)** – for database creation and queries
- **CSV** – dataset storage format
- **Date & Time Functions** – to calculate hospital stays and monthly expenses
- **Aggregate Functions** – `SUM`, `AVG`, `COUNT`, `GROUP BY`, `ORDER BY`

---

## 📊 SQL Analysis Performed
The project answers **10 major analytical questions** using SQL queries:

1. **Total number of patients across hospitals**
2. **Average number of doctors per hospital**
3. **Top 3 departments with the highest number of patients**
4. **Hospital with the maximum medical expenses**
5. **Daily average medical expenses per hospital**
6. **Longest hospital stay** (based on admission & discharge dates)
7. **Total patients treated per city**
8. **Average length of stay per department**
9. **Department with the lowest number of patients**
10. **Monthly medical expenses report**

---

## 🚀 How to Run the Project
1. Install **PostgreSQL** or use any SQL-compatible database system.
2. Create a new database (e.g., `Hospital_Analytics`).
3. Run the script `Hospital_Data_Analytics.sql`.
4. Load the dataset `Hospital_Data.csv` using the `COPY` command inside SQL.
   ```sql
   COPY hospital_data(hospital_name, location, department, doctors_count, patients_count, admission_date, discharge_date, medical_expenses)
   FROM 'path-to-your-file/Hospital_Data.csv'
   DELIMITER ','
   CSV HEADER;```
 5. Execute queries to generate analytics and insights.
---
## 📌 Example Queries

### ✅ Total Number of Patients
```sql
SELECT SUM(Patients_Count) AS "Total Number of Patients"
FROM Hospital_Data;
 ```
### ✅Top 3 Departments with Highest Number of Patients
```SELECT Department, SUM(Patients_Count) AS Patient_Count
FROM Hospital_Data
GROUP BY Department
ORDER BY SUM(Patients_Count) DESC
LIMIT 3;
```
### ✅Monthly Medical Expenses Report
```SELECT DATE_TRUNC('month', admission_date) AS Month,
       SUM(medical_expenses) AS Total_Expenses
FROM Hospital_Data
GROUP BY DATE_TRUNC('month', admission_date)
ORDER BY Month;
```


      
## 📈 Key Insights

- 📌 **Patients & Doctors**: Helps identify hospitals with patient overload compared to doctor availability.  
- 📌 **Department Analysis**: Shows which hospital departments attract the most and least patients.  
- 📌 **Financial Insights**: Provides clarity on which hospitals incur the highest medical expenses and monthly spending patterns.  
- 📌 **Stay Duration**: Tracks average hospital stay length for patients per department, useful for efficiency analysis.  
- 📌 **City-Wise Analysis**: Summarizes total patient distribution across different cities.  

---

## 🎯 Learning Outcomes

- Hands-on experience with **realistic healthcare dataset analysis** using SQL.  
- Understanding of **aggregate queries, joins, grouping, and date functions** in SQL.  
- Ability to create **data-driven insights** for healthcare management systems.  
- Portfolio-ready project to showcase **SQL skills for Data Analyst / Data Engineer roles**.  

---

## 📌 Future Enhancements

- Add **visualizations** (using Power BI / Tableau / Python) to represent insights.  
- Extend dataset with more features like **staff salaries, bed counts, treatment types**.  
- Implement **stored procedures** for automated reporting.  
- Deploy the database in **cloud platforms (AWS RDS / Azure SQL)** for scalability.  

---

## 👨‍💻 Author

**Khushi Dua**  
📍 B.Tech CSE (AIML) | Data Analytics & Machine Learning Enthusiast  

---

✨ *If you like this project, don’t forget to ⭐ star the repository!*  

