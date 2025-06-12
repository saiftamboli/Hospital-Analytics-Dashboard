# 🏥 Hospital Analytics Dashboard
Live Dashboard [link](https://app.powerbi.com/view?r=eyJrIjoiNTM0NGNiNTMtOTFjZi00OWRkLTgxZDktMGFhMDc3NDczMmU2IiwidCI6ImUwYzk0NGU4LWM5N2YtNGUwMS04MWUwLWRkMzZjZTk5YTgwYyJ9)
### 📌 Overview
A comprehensive Power BI dashboard for hospital management, providing real-time insights into patient records, doctor performance, financial metrics, and hospital operations. Built with a focus on a clean data model, powerful DAX measures, and an optimized SQL backend for performance.

### 🎯 Goal of the Dashboard
The primary goal of this project is to provide a centralized, interactive, and user-friendly platform for hospital administrators and stakeholders. The dashboard aims to deliver actionable insights to:

- Enhance decision-making for hospital administrators with real-time analytics.
- Track patient admissions, discharges, and treatment history efficiently.
- Monitor doctor performance, appointments, and commission earnings.
- Optimize hospital resources (beds, medicine stock, surgeries).
- Analyze financial metrics (billing, salaries, revenue streams).

A key focus of this project is **usability and scalability**. Although the initial dataset is small, the dashboard is architected to handle a much larger volume of data, with the potential for real-time updates by simply loading more records.

### 🛠️ Technologies Used
- **Reporting & Visualization:** `Power BI Desktop`
- **Data Transformation & ETL:** `Power Query`, `SQL`
- **Data Analysis & Calculations:** `DAX (Data Analysis Expressions)`
- **Data Architecture:** `Data Modeling` (Consolidated 15 tables → 4 optimized tables)
- **Template & Graphics:** `Figma`

---

### 🗄️ Data Modeling & ETL Process
The foundation of this dashboard is a robust and efficient data model. The process involved several key stages:

1.  **Initial Data Sourcing:** The project started with an extensive set of 15 raw tables, including `Appointment`, `Beds`, `Doctor`, `Patient`, `Hospital Bills`, `Medical Stock`, and `Surgery`. The `Patient` table served as the main fact table.

2.  **SQL Transformation:** Using SQL, I performed critical data cleaning and transformation tasks.
    - The `Patient` table was established as the master table by joining multiple source tables.
    - Conditional queries were used to source and retain only the required columns, optimizing the dataset.
    - A consolidated **SQL View** was created to serve as the single source of truth for Power BI.

3.  **Power BI Data Model:** By connecting Power BI directly to the SQL view, the data import process was streamlined. This strategic pre-processing in SQL drastically simplified the data model within Power BI, reducing the initial 15 tables to just **4 core tables**. This clean model is more efficient, easier to manage, and enhances dashboard performance.

Data Model ![Data Model](https://github.com/user-attachments/assets/f417104b-3d35-4701-921d-41856b6f278d)


### 📊 Dashboard Pages & Insights
The dashboard is organized into six distinct pages, each designed to answer specific business questions.

#### 1. Home Page
A welcoming landing page that provides a high-level introduction to the dashboard and easy navigation to all other sections.
Home Page ![Home Page](https://github.com/user-attachments/assets/a60cbc8c-5aae-408d-ae51-cad1ad2dd03f)

#### 2. Overview Page
This page acts as an executive summary, consolidating the most critical KPIs and visuals from across the dashboard.
- **KPI Highlights:** Total admitted/discharged patients, beds availability, doctor ratings.
- **Visuals:**
    - Line chart for discharge trends over time.
    - Matrix visual that functions as a calendar to track medicine quantity by day/month.
    - Appointments tracker with time.
    - KPI cards for medicine stock status, bed usage, and more.

Overview Page ![image](https://github.com/user-attachments/assets/60634160-7b44-490c-8aa3-0ad9d192ae56)

#### 3. Patient Page
A detailed, patient-centric view that allows for a deep dive into an individual's record. This page is fully interactive and filters based on the selected patient.
- **Slicer:** Select patient by name.
- **Patient Details:** Photo, age, weight, address, contact info, blood group.
- **Medical Information:** Assisting doctor, diagnosis, department, admission/discharge dates, room type.
- **KPIs:** Total Bill Amount, Total Medicine Quantity.

Patient Page ![Patient Page](https://github.com/user-attachments/assets/f6e63d38-2f86-475a-9170-4ed519072fbc)

#### 4. Doctor Info Page
Provides a comprehensive analysis of doctor performance, workload, and compensation. All visuals dynamically update based on the selected doctor.
- **Slicer:** Select doctor by name.
- **Doctor Details:** Availability status, salary, department, and patient ratings.
- **KPIs:** Commission Earned, Total Patient Spend, Doctor Fees.
- **Interactive Commission Calculator:** A gauge visual and slider to calculate a doctor's commission based on commission rate (%) and patient spend.
- **Visuals:** Upcoming vs. completed appointments.

Doctor Info Page ![image](https://github.com/user-attachments/assets/cba668a2-3455-4b03-b549-43461a0f84c6)

#### 5. Hospital Page
Focuses on the operational aspects of the hospital, including surgeries, patient demographics, and resource availability.
- **Visuals:**
    - Schedule of upcoming surgeries with date, time, and doctor.
    - Stacked bar chart of patient age categories.
    - Status of medical tests performed by patients.
    - Donut chart showing bed availability by type (e.g., ICU, General).
    - Table detailing doctors, their assigned patients, and diagnoses.

Hospital Page ![image](https://github.com/user-attachments/assets/3f6f0fc9-22d5-4616-81df-d4136d6c0d8b)

#### 6. Finance Page
Provides a clear overview of the hospital's financial health, from revenue streams to major expenses.
- **KPIs:** Total Patient Count, Doctor Count, Staff Count, Total Bill Amount, Doctor Salaries, Staff Salaries, Doctor Commissions.
- **Visuals:**
    - Line chart showcasing monthly medicine sales quantity.
    - Bar chart breaking down patient charges by type and total amount.
    - Visuals indicating the stock status of different medicine types.

Finance Page ![image](https://github.com/user-attachments/assets/9db36032-18a7-4b2a-9a91-e0fb9a00c60c)
