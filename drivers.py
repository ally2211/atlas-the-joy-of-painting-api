import pyodbc

# List installed ODBC drivers
print("Installed ODBC Drivers:")
for driver in pyodbc.drivers():
    print(driver)
