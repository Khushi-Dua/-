CREATE TABLE Hospital_Data (
    Hospital_Name VARCHAR(100),
    Location VARCHAR(50),
	Department VARCHAR(50),
    Doctors_Count INT,
    Patients_Count INT,
    Admission_Date DATE,
    Discharge_Date DATE,
    Medical_Expenses NUMERIC(10,2)
);

SET datestyle = 'DMY';


COPY hospital_data(hospital_name, location,department, doctors_count, patients_count, admission_date, discharge_date, medical_expenses)
FROM 'D:\Data Analyst  Preparation\SQL\Hospital Data Analytics with SQL\Hospital_Data.csv'
DELIMITER ','
CSV HEADER;

SELECT * from Hospital_Data;

--- Total Number of Patients

Select Sum(Patients_Count) as "Total Number of Patients"
from Hospital_Data;

--- Average Number of Doctors per Hospital

Select Hospital_Name, Avg(Doctors_Count) as "Average Number of Doctors per Hospital"
from Hospital_Data
Group by Hospital_Name;

---Top 3 Departments with the Highest Number of Patients

Select Department,Sum(Patients_Count) as "Patient_Count"
from Hospital_Data
Group by Department
order by sum(Patients_Count) desc limit 3;

--- Hospital with the Maximum Medical Expenses

Select Hospital_Name , sum(Medical_Expenses) as Total_Expenses
from Hospital_Data
group by Hospital_Name
order by Total_Expenses desc limit 1;

--- Daily Average Medical Expenses

Select Hospital_Name, Avg(Medical_Expenses) as Avg_Expenses
from Hospital_Data
group by Hospital_Name;

--- Longest Hospital Stay

Select Hospital_Name,Department,Discharge_Date-Admission_Date as "Longest Hospital Stay"
from Hospital_Data 
order by "Longest Hospital Stay" desc limit 1;

---- Total Patients Treated Per City

Select Location,Sum(Patients_Count) as "Total Patients Treated Per City"
from Hospital_Data
group by Location;

--- Average Length of Stay Per Department

Select department,avg(Discharge_Date-Admission_Date) as "average number of days patients spend in each department"
from Hospital_Data
group by Department;

---Identify the Department with the Lowest Number of Patients

Select Department,sum(patients_count) as Patient_Count
from Hospital_Data
group by Department
order by sum(patients_count) asc limit 1;

--- Monthly Medical Expenses Report

SELECT 
    DATE_TRUNC('month', admission_date) AS month,
    SUM(medical_expenses) AS total_expenses
FROM hospital_data
GROUP BY DATE_TRUNC('month', admission_date)
ORDER BY month;

