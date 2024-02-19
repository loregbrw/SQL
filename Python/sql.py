import pyodbc

server = 'CA-C-0065D\SQLEXPRESS'
database = 'python'

cnxn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER='+server+';DATABASE='+database+';Trusted_Connection=yes')

cursor = cnxn.cursor()

cursor.execute("CREATE TABLE ALUNO (ID INT, NOME VARCHAR(200))") 
cursor.commit()

print("Inserido com sucesso!")
