## ETL - Extract Transform and Load data
### README: **The Joy of Painting Episode Database and API**

---

### **Overview**
This project creates a database and API for a local public broadcasting station to filter episodes of *The Joy of Painting*. The application processes raw data from CSV and Excel files, normalizes it into a database, and provides a robust API for querying episodes by:
- **Month of Original Broadcast**
- **Subject Matter**
- **Color Palette**

---

### **Project Workflow**
1. **ETL Process**:
   - Extracts raw data from multiple files (CSV and Excel).
   - Transforms inconsistent fields (e.g., varying quotation styles in titles).
   - Normalizes and loads the data into a relational database.

2. **Database Design**:
   - Implements a schema optimized for episode filtering and relationships between data points (e.g., subject matter, color palette).

3. **API Development**:
   - Builds an API using a modern framework to expose endpoints for filtering episodes.

---

### **Requirements**
#### **Software Dependencies**
- Python 3.x
- SQL Server (or another relational database)
- Required Python libraries:
  - `pandas` (for ETL operations)
  - `sqlalchemy` (for database interactions)
  - `fastapi` (for API development)
  - `uvicorn` (to run the API)
  - `openpyxl` (for handling Excel files)

#### **Install Dependencies**
```bash
pip install pandas sqlalchemy fastapi uvicorn openpyxl
```

---

### **Setup**
1. **Prepare the Data**:
   - Place the raw CSV and Excel files in a directory named `data/`.

2. **Configure the Database**:
   - Set up a SQL Server instance.
   - Update the `DATABASE_URI` in the provided scripts to match your database configuration.

3. **Run the ETL Process**:
   - Use the provided script to clean and load data into the database.

4. **Run the API**:
   - Start the API server to expose filtering endpoints.
