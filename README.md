# E-Commerce Data Engineering Project (Azure)

##  Overview
This project demonstrates an **end-to-end data engineering pipeline** built on **Azure Cloud**.  
The goal was to design a modern **data lakehouse architecture** for an e-commerce dataset, enabling data ingestion, transformation, and serving for analysts and data scientists.

---

##  Tech Stack
- **Azure Data Factory (ADF)** – Data ingestion (HTTP endpoint, SQL Database)  
- **Azure Data Lake Storage Gen2 (ADLS Gen2)** – Data lake with **Bronze/Silver/Gold** layers  
- **Azure Databricks (PySpark)** – Data processing, transformations, joins  
- **Azure Synapse Analytics** – External tables and serving layer for BI/analytics  

---

##  Architecture Workflow
1. **Data Ingestion (ADF)**  
   - Extracted raw data from an **HTTP endpoint** and a **SQL Database**.  
   - Landed raw data into **Azure Data Lake Gen2 (Bronze layer)**.  

2. **Data Lake Organization (ADLS Gen2)**  
   - Created **three layers** inside the data lake:  
     - **Bronze** → Raw data from source  
     - **Silver** → Cleaned and transformed data  
     - **Gold** → Curated and aggregated data for analytics  

3. **Data Transformation (Databricks)**  
   - Processed raw data from **Bronze layer**.  
   - Performed cleaning, manipulation, and **joins** (optimized using **broadcast joins**).  
   - Pulled additional data directly from another database into Databricks.  
   - Stored transformed datasets back into **Silver layer** in ADLS Gen2.  

4. **Analytics Serving (Synapse Analytics)**  
   - Connected Synapse to **ADLS Gen2 Silver/Gold layers**.  
   - Created **external tables** in Synapse for analysts and data scientists.  
   - Stored curated datasets in the **Gold layer**, making them ready for BI and advanced analytics.  

---

##  Repository Contents
- `databricks/` → PySpark notebooks for data cleaning, transformation, joins  
- `synapse/` → SQL scripts for external tables and serving layer  
- `data/` → Brazillian Olist ecommerce dataset used in the pipeline which was taken from kaggle.

---

##  How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/Shivamani-A/Data_engineering_Ecommerce.git
