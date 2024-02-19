import pyodbc

server = 'CA-C-0065D\SQLEXPRESS'
database = 'python'

cnxn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER='+server+';DATABASE='+database+';Trusted_Connection=yes')

cursor = cnxn.cursor()

cursor.execute("SELECT * FROM ALUNO") 

row = cursor.fetchone()

while row: 
    for i in row:
        print(i)
    row = cursor.fetchone()


cursor.commit()

print("Inserido com sucesso!")
