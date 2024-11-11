use yourDatabaseName  // replace "yourDatabaseName" with the name of your database

--insert dummy records
db.Employee.insertMany([
   { "Emp_id": "E1001", "Emp_Name": "John", "Emp_salary": 60000, "Emp_Dept": "Finance" },
   { "Emp_id": "E1002", "Emp_Name": "Jane", "Emp_salary": 45000, "Emp_Dept": "Marketing" },
   { "Emp_id": "E1003", "Emp_Name": "Robert", "Emp_salary": 70000, "Emp_Dept": "IT" },
   { "Emp_id": "E1004", "Emp_Name": "Emily", "Emp_salary": 30000, "Emp_Dept": "Marketing" },
   { "Emp_id": "E1005", "Emp_Name": "Michael", "Emp_salary": 50000, "Emp_Dept": "Sales" },
   { "Emp_id": "E1006", "Emp_Name": "Rachel", "Emp_salary": 55000, "Emp_Dept": "Finance" },
   { "Emp_id": "E1007", "Emp_Name": "Smith", "Emp_salary": 48000, "Emp_Dept": "Marketing" },
   { "Emp_id": "E1008", "Emp_Name": "David", "Emp_salary": 80000, "Emp_Dept": "IT" },
   { "Emp_id": "E1009", "Emp_Name": "Sophia", "Emp_salary": 42000, "Emp_Dept": "Marketing" },
   { "Emp_id": "E1010", "Emp_Name": "James", "Emp_salary": 90000, "Emp_Dept": "Finance" }
])

Step 3: Find Employees with Salary Greater Than 50,000 Rs
db.Employee.find({ "Emp_salary": { $gt: 50000 } })

Step 4: Increase the Salary of Employee "Smith" by 5,000 Rs
db.Employee.updateOne(
   { "Emp_Name": "Smith" },
   { $inc: { "Emp_salary": 5000 } }
)

Step 5: Display Employees in the Marketing Department with Salary Less
db.Employee.find({ "Emp_Dept": "Marketing", "Emp_salary": { $lt: 45000 } })

Step 6: Display the Top Five Highest Paid Employees
db.Employee.find().sort({ "Emp_salary": -1 }).limit(5)

Delete Employee with ID E1007
db.Employee.deleteOne({ "Emp_id": "E1007" })

Step 8: Create an Index on Emp_id and Compare Search Time
db.Employee.createIndex({ "Emp_id": 1 })
