this will demonstrate mongo aggregation power

--switch db and insert records
db.student.insertMany([
   { "Roll_No": 1, "name": "Alice", "class": "TEComp A", "marks": 85, "sports": ["Football"] },
   { "Roll_No": 2, "name": "Bob", "class": "TEComp A", "marks": 40, "sports": ["Basketball"] },
   { "Roll_No": 3, "name": "Charlie", "class": "TEComp B", "marks": 78, "sports": ["Football"] },
   { "Roll_No": 4, "name": "Daisy", "class": "TEComp B", "marks": 92, "sports": ["Cricket"] },
   { "Roll_No": 5, "name": "Eve", "class": "TEComp A", "marks": 88, "sports": ["Tennis"] },
   { "Roll_No": 6, "name": "Frank", "class": "TEComp C", "marks": 60, "sports": ["Football"] },
   { "Roll_No": 7, "name": "Grace", "class": "TEComp C", "marks": 95, "sports": ["Badminton"] },
   { "Roll_No": 8, "name": "Hank", "class": "TEComp B", "marks": 55, "sports": ["Football"] },
   { "Roll_No": 9, "name": "Ivy", "class": "TEComp A", "marks": 42, "sports": ["Football"] },
   { "Roll_No": 10, "name": "Jack", "class": "TEComp C", "marks": 99, "sports": ["Basketball"] }
])

Step 2: Create an Index on the name Field and Use explain()

db.student.createIndex({ "name": 1 })

Step 2: Create an Index on the name Field and Use explain()
db.student.find({"name":"Alice"}).explain("executionStats");

Step 3: Display the First 5 Toppers of Class "TE"
db.student.aggregate([
   { $match: { "class": /^TE/ } }, // Match students from TE class
   { $sort: { "marks": -1 } },      // Sort by marks in descending order
   { $limit: 5 }                    // Limit to the top 5
])

Step 4: Display Marks of Topper of Each Division
db.student.aggregate([
   { $group: { _id: "$class", maxMarks: { $max: "$marks" } } }
])

Step 5: Display the Average Marks of Each Division
db.student.aggregate([
   { $group: { _id: "$class", averageMarks: { $avg: "$marks" } } }
])

Step 6: Display the Roll Call of "TEComp A"

db.student.find(
   { "class": "TEComp A" },
   { "Roll_No": 1, "_id": 0 }  // Only include Roll_No, exclude _id
)

Step 7: Display the List of Fail Students from "TE Comp A"
db.student.find(
   { "class": "TEComp A", "marks": { $lt: 50 } }
)

Step 8: Display the Name, Class, and Marks of All Students
db.student.find(
   {},
   { "name": 1, "class": 1, "marks": 1, "_id": 0 }
)

Step 9: Display the List of Students Who Play Football
db.student.find(
   { "sports": "Football" }
)
