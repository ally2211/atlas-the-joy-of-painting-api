import pyodbc
import pandas as pd

# Database connection details
server = 'YOUR_SERVER_NAME'
database = 'MyPaintingDb'
username = 'YOUR_USERNAME'
password = 'YOUR_PASSWORD'
driver = 'ODBC Driver 17 for SQL Server'

# CSV file paths
colors_csv = r'C:\Path\To\ColorsUsed.csv'
subject_csv = r'C:\Path\To\SubjectMatter.csv'

# Establishing connection
def get_connection():
    conn = pyodbc.connect(
        f"DRIVER={driver};SERVER={server};DATABASE=master;UID={username};PWD={password}")
    return conn

# Create the database
def create_database(conn):
    cursor = conn.cursor()
    cursor.execute("IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'MyPaintingDb') CREATE DATABASE MyPaintingDb;")
    conn.commit()

# Create tables
def create_tables(conn):
    cursor = conn.cursor()
    cursor.execute("USE MyPaintingDb;")
    
    # ColorsUsed table
    cursor.execute("""
    CREATE TABLE IF NOT EXISTS ColorsUsed (
        ColorID INT PRIMARY KEY IDENTITY(1,1),
        ColorName NVARCHAR(50) NOT NULL,
        EpisodeDate DATE NOT NULL
    );
    """)
    
    # SubjectMatter table
    cursor.execute("""
    CREATE TABLE IF NOT EXISTS SubjectMatter (
        SubjectID INT PRIMARY KEY IDENTITY(1,1),
        Subject NVARCHAR(100) NOT NULL,
        EpisodeDate DATE NOT NULL
    );
    """)
    conn.commit()

# Load data from CSV to database
def load_csv_to_table(conn, csv_path, table_name):
    data = pd.read_csv(csv_path)
    cursor = conn.cursor()
    
    for index, row in data.iterrows():
        placeholders = ', '.join(['?'] * len(row))
        columns = ', '.join(data.columns)
        sql = f"INSERT INTO {table_name} ({columns}) VALUES ({placeholders})"
        cursor.execute(sql, tuple(row))
    
    conn.commit()

# Main function
def main():
    conn = get_connection()
    
    try:
        # Step 1: Create database
        create_database(conn)
        print("Database created or already exists.")
        
        # Step 2: Create tables
        create_tables(conn)
        print("Tables created or already exist.")
        
        # Step 3: Load data into tables
        conn = pyodbc.connect(
            f"DRIVER={driver};SERVER={server};DATABASE={database};UID={username};PWD={password}")
        load_csv_to_table(conn, colors_csv, 'ColorsUsed')
        print("Data loaded into ColorsUsed table.")
        
        load_csv_to_table(conn, subject_csv, 'SubjectMatter')
        print("Data loaded into SubjectMatter table.")
    
    except Exception as e:
        print("An error occurred:", e)
    finally:
        conn.close()

if __name__ == "__main__":
    main()
