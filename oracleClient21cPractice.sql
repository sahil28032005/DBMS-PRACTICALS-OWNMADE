Using MongoDB:          6.0.8
Using Mongosh:          1.10.3

For mongosh info see: https://docs.mongodb.com/mongodb-shell/

------
   The server generated these startup warnings when booting
   2024-10-16T17:06:02.786+05:30: Access control is not enabled for the database. Read and write access to data and configuration is unrestricted
   2024-10-16T17:06:02.787+05:30: This server is bound to localhost. Remote systems will be unable to connect to this server. Start the server with --bind_ip <address> to specify which IP addresses it should serve responses from, or with --bind_ip_all to bind to all interfaces. If this behavior is desired, start the server with --bind_ip 127.0.0.1 to disable this warning
------

test> show dbs
admin               40.00 KiB
cart                40.00 KiB
cart11             112.00 KiB
config              72.00 KiB
e_commerse_local;  244.00 KiB
ecom                 8.00 KiB
local               88.00 KiB
wanderlust         176.00 KiB
test> create database practical
Uncaught:
SyntaxError: Missing semicolon. (1:6)

> 1 | create database practical
    |       ^
  2 |

test> create database practical;
Uncaught:
SyntaxError: Missing semicolon. (1:6)

> 1 | create database practical;
    |       ^
  2 |

test> use practical
switched to db practical
practical> show dbs
admin               40.00 KiB
cart                40.00 KiB
cart11             112.00 KiB
config              72.00 KiB
e_commerse_local;  244.00 KiB
ecom                 8.00 KiB
local               88.00 KiB
wanderlust         176.00 KiB
practical> db.createcollection("Employee")
TypeError: db.createcollection is not a function
practical> db.createCollection("Employee")
{ ok: 1 }
practical> db.Employee.insertMany([{Emp_id:"E1001",Emp_Name:"john","Emp_salary":48000,Emp_Dept:"Marketing"},])
practical> db.Employee.insertMany([{Emp_id:"E1001",Emp_Name:"john","Emp_salary":48000,Emp_Dept:"Marketing"}]);
practical>
(To exit, press Ctrl+C again or Ctrl+D or type .exit)
practical> mongosh
ReferenceError: mongosh is not defined
practical> db.collection.insertMany([Emp_id:"E1001",Emp_Namee:"john",Emp_salary:48000,Emp_Dept:"Marketing"]);
Uncaught:
SyntaxError: Unexpected token, expected "," (1:32)

> 1 | db.collection.insertMany([Emp_id:"E1001",Emp_Namee:"john",Emp_salary:48000,Emp_Dept:"Marketing"]);
    |                                 ^
  2 |

practical> db.collection.insert([Emp_id:"E1001",Emp_Namee:"john",Emp_salary:48000,Emp_Dept:"Marketing"
Uncaught:
SyntaxError: Unexpected token, expected "," (1:28)

> 1 | db.collection.insert([Emp_id:"E1001",Emp_Namee:"john",Emp_salary:48000,Emp_Dept:"Marketing"
    |                             ^
  2 |

practical> db.collection.insert([Emp_id:"E1001",Emp_Namee:"john",Emp_salary:48000,Emp_Dept:"Marketing"])
Uncaught:
SyntaxError: Unexpected token, expected "," (1:28)

> 1 | db.collection.insert([Emp_id:"E1001",Emp_Namee:"john",Emp_salary:48000,Emp_Dept:"Marketing"])
    |                             ^
  2 |

practical> db.collection.insert([Emp_id:"E1001",Emp_Namee:"john",Emp_salary:48000,Emp_Dept:"Marketing"])
Uncaught:
SyntaxError: Unexpected token, expected "," (1:28)

> 1 | db.collection.insert([Emp_id:"E1001",Emp_Namee:"john",Emp_salary:48000,Emp_Dept:"Marketing"])
    |                             ^
  2 |

practical> db.collection.insert({Emp_id:"E1001",Emp_Namee:"john",Emp_salary:48000,Emp_Dept:"Marketing"})
DeprecationWarning: Collection.insert() is deprecated. Use insertOne, insertMany, or bulkWrite.
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("670fa810c129408b8af1c5c6") }
}
practical> db.collection.insertOne({Emp_id:"E1001",Emp_Namee:"john",Emp_salary:48000,Emp_Dept:"Marketing"})
practical> show dbs
admin               40.00 KiB
cart                40.00 KiB
cart11             112.00 KiB
config              72.00 KiB
e_commerse_local;  244.00 KiB
ecom                 8.00 KiB
local               88.00 KiB
practical           48.00 KiB
wanderlust         176.00 KiB
practical> db.collection.find()
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  }
]
practical> db.collection.insert({Emp_id:"E1002",Emp_Namee:"smith",Emp_salary:52000,Emp_Dept:"sales"})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("670fa8f8c129408b8af1c5c7") }
}
practical> db.collection.insert({Emp_id:"E1003",Emp_Namee:"Alice",Emp_salary:47000,Emp_Dept:"HR"})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("670fa919c129408b8af1c5c8") }
}
practical> db.collection.insert({Emp_id:"E1004",Emp_Namee:"Bob",Emp_salary:59000,Emp_Dept:"HR"})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("670fa938c129408b8af1c5c9") }
}
practical> db.collection.insert({Emp_id:"E1005",Emp_Namee:"David",Emp_salary:70000,Emp_Dept:"finance"})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("670fa95ec129408b8af1c5ca") }
}
practical> db.collection.find()
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 52000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 70000,
    Emp_Dept: 'finance'
  }
]
practical> db.collection.insert({Emp_id:"E1000",Emp_Namee:"Tom",Emp_salary:90000,Emp_Dept:"finance"})
{
  acknowledged: true,
  insertedIds: { '0': ObjectId("670fa98ec129408b8af1c5cb") }
}
practical> db.collection.find()
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 52000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 70000,
    Emp_Dept: 'finance'
  },
  {
    _id: ObjectId("670fa98ec129408b8af1c5cb"),
    Emp_id: 'E1000',
    Emp_Namee: 'Tom',
    Emp_salary: 90000,
    Emp_Dept: 'finance'
  }
]
practical> db.collection.fin({Emp_salary:{$gt:50000}})
TypeError: db.collection.fin is not a function
practical> db.collection.find({Emp_salary:{$gt:50000}})
[
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 52000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 70000,
    Emp_Dept: 'finance'
  },
  {
    _id: ObjectId("670fa98ec129408b8af1c5cb"),
    Emp_id: 'E1000',
    Emp_Namee: 'Tom',
    Emp_salary: 90000,
    Emp_Dept: 'finance'
  }
]
practical> db.collection.find({Emp_Name:"smith"})

practical> db.collection.find({Emp_Name:"Smith"})

practical> db.collection.findOne({Emp_Name:"Smith"})
null
practical> db.collection.findOne({Emp_Namee:"Smith"})
null
practical> db.collection.findOne({Emp_Namee:"smith"})
{
  _id: ObjectId("670fa8f8c129408b8af1c5c7"),
  Emp_id: 'E1002',
  Emp_Namee: 'smith',
  Emp_salary: 52000,
  Emp_Dept: 'sales'
}
practical> db.collection.uodateOne({Emp_Namee:"smith"},{$inc:{Emp_salary:5000}});
TypeError: db.collection.uodateOne is not a function
practical> db.collection.updateOne({Emp_Namee:"smith"},{$inc:{Emp_salary:5000}});
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
practical> db.collection.find()
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 70000,
    Emp_Dept: 'finance'
  },
  {
    _id: ObjectId("670fa98ec129408b8af1c5cb"),
    Emp_id: 'E1000',
    Emp_Namee: 'Tom',
    Emp_salary: 90000,
    Emp_Dept: 'finance'
  }
]
practical> db..collection.find({Emp})
Uncaught:
SyntaxError: Unexpected token (1:3)

> 1 | db..collection.find({Emp})
    |    ^
  2 |

practical> db..collection.find({Emp_Dept:"Marketing"},{$lt:{Emp_salary:5000}})
Uncaught:
SyntaxError: Unexpected token (1:3)

> 1 | db..collection.find({Emp_Dept:"Marketing"},{$lt:{Emp_salary:5000}})
    |    ^
  2 |

practical> db.collection.find({Emp_Dept:"Marketing"},{$lt:{Emp_salary:5000}})
MongoServerError: FieldPath field names may not start with '$'. Consider using $getField or $setField.
practical> db.collection.find({Emp_Dept:"Marketing"},{{Emp_salary:{$gt:5000}}})
Uncaught:
SyntaxError: Unexpected token (1:43)

> 1 | db.collection.find({Emp_Dept:"Marketing"},{{Emp_salary:{$gt:5000}}})
    |                                            ^
  2 |

practical> db.collection.find({Emp_Dept:"Marketing"},{Emp_salary:{$gt:5000}})
MongoServerError: Expression $gt takes exactly 2 arguments. 1 were passed in.
practical> db.collection.find({Emp_Dept:"Marketing"},{Emp_salary:{$lt:5000}})
MongoServerError: Expression $lt takes exactly 2 arguments. 1 were passed in.
practical> db.collection.find({Emp_Dept:"Marketing",Emp_salary:{$lt:5000}})

practical> db.collection.find({Emp_Dept:"Marketing",Emp_salary:{$lt:50000}})
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  }
]
practical> db.collection.find({Employee_name:"smith",{$lt:Emp_salary:"50000"}});
Uncaught:
SyntaxError: Unexpected token (1:42)

> 1 | db.collection.find({Employee_name:"smith",{$lt:Emp_salary:"50000"}});
    |                                           ^
  2 |

practical> db.collection.find({Employee_name:"smith",{Emp_salary:$lt:"50000"}});
Uncaught:
SyntaxError: Unexpected token (1:42)

> 1 | db.collection.find({Employee_name:"smith",{Emp_salary:$lt:"50000"}});
    |                                           ^
  2 |

practical> db.collection.find({Employee_name:"smith",Emp_salary:{$lt:"50000"}})

practical> db.collection.find({Employee_name:"smith",Emp_salary:{$gt:"50000"}})

practical> db.collection.find({Employee_Name:"smith",Emp_salary:{$gt:"50000"}})

practical> db.collection.find({Employee_Name:"smith",Emp_salary:{$gt:50000}})

practical> db.collection.find({Employee_Namee:"smith",Emp_salary:{$gt:50000}})

practical> db.collection.find({Employee_Namee:"smith",Emp_salary:{$gt:50000}})

practical>
(To exit, press Ctrl+C again or Ctrl+D or type .exit)
practical>

C:\Users\Admin>mongo
'mongo' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\Admin>mongod
{"t":{"$date":"2024-10-16T12:17:59.367Z"},"s":"I",  "c":"NETWORK",  "id":4915701, "ctx":"-","msg":"Initialized wire specification","attr":{"spec":{"incomingExternalClient":{"minWireVersion":0,"maxWireVersion":17},"incomingInternalClient":{"minWireVersion":0,"maxWireVersion":17},"outgoing":{"minWireVersion":6,"maxWireVersion":17},"isInternalClient":true}}}
{"t":{"$date":"2024-10-16T17:48:00.890+05:30"},"s":"I",  "c":"CONTROL",  "id":23285,   "ctx":"-","msg":"Automatically disabling TLS 1.0, to force-enable TLS 1.0 specify --sslDisabledProtocols 'none'"}
{"t":{"$date":"2024-10-16T17:48:00.891+05:30"},"s":"I",  "c":"NETWORK",  "id":4648602, "ctx":"thread1","msg":"Implicit TCP FastOpen in use."}
{"t":{"$date":"2024-10-16T17:48:00.895+05:30"},"s":"I",  "c":"REPL",     "id":5123008, "ctx":"thread1","msg":"Successfully registered PrimaryOnlyService","attr":{"service":"TenantMigrationDonorService","namespace":"config.tenantMigrationDonors"}}
{"t":{"$date":"2024-10-16T17:48:00.895+05:30"},"s":"I",  "c":"REPL",     "id":5123008, "ctx":"thread1","msg":"Successfully registered PrimaryOnlyService","attr":{"service":"TenantMigrationRecipientService","namespace":"config.tenantMigrationRecipients"}}
{"t":{"$date":"2024-10-16T17:48:00.897+05:30"},"s":"I",  "c":"REPL",     "id":5123008, "ctx":"thread1","msg":"Successfully registered PrimaryOnlyService","attr":{"service":"ShardSplitDonorService","namespace":"config.tenantSplitDonors"}}
{"t":{"$date":"2024-10-16T17:48:00.897+05:30"},"s":"I",  "c":"CONTROL",  "id":5945603, "ctx":"thread1","msg":"Multi threading initialized"}
{"t":{"$date":"2024-10-16T17:48:00.900+05:30"},"s":"I",  "c":"CONTROL",  "id":4615611, "ctx":"initandlisten","msg":"MongoDB starting","attr":{"pid":6944,"port":27017,"dbPath":"C:/data/db/","architecture":"64-bit","host":"Sahil"}}
{"t":{"$date":"2024-10-16T17:48:00.900+05:30"},"s":"I",  "c":"CONTROL",  "id":23398,   "ctx":"initandlisten","msg":"Target operating system minimum version","attr":{"targetMinOS":"Windows 7/Windows Server 2008 R2"}}
{"t":{"$date":"2024-10-16T17:48:00.901+05:30"},"s":"I",  "c":"CONTROL",  "id":23403,   "ctx":"initandlisten","msg":"Build Info","attr":{"buildInfo":{"version":"6.0.8","gitVersion":"3d84c0dd4e5d99be0d69003652313e7eaf4cdd74","modules":[],"allocator":"tcmalloc","environment":{"distmod":"windows","distarch":"x86_64","target_arch":"x86_64"}}}}
{"t":{"$date":"2024-10-16T17:48:00.902+05:30"},"s":"I",  "c":"CONTROL",  "id":51765,   "ctx":"initandlisten","msg":"Operating System","attr":{"os":{"name":"Microsoft Windows 10","version":"10.0 (build 19045)"}}}
{"t":{"$date":"2024-10-16T17:48:00.902+05:30"},"s":"I",  "c":"CONTROL",  "id":21951,   "ctx":"initandlisten","msg":"Options set by command line","attr":{"options":{}}}
{"t":{"$date":"2024-10-16T17:48:00.913+05:30"},"s":"E",  "c":"CONTROL",  "id":20557,   "ctx":"initandlisten","msg":"DBException in initAndListen, terminating","attr":{"error":"DBPathInUse: Unable to create/open the lock file: C:\\data\\db\\mongod.lock (The process cannot access the file because it is being used by another process.). Ensure the user executing mongod is the owner of the lock file and has the appropriate permissions. Also make sure that another mongod instance is not already running on the C:\\data\\db\\ directory"}}
{"t":{"$date":"2024-10-16T17:48:00.914+05:30"},"s":"I",  "c":"REPL",     "id":4784900, "ctx":"initandlisten","msg":"Stepping down the ReplicationCoordinator for shutdown","attr":{"waitTimeMillis":15000}}
{"t":{"$date":"2024-10-16T17:48:00.919+05:30"},"s":"I",  "c":"REPL",     "id":4794602, "ctx":"initandlisten","msg":"Attempting to enter quiesce mode"}
{"t":{"$date":"2024-10-16T17:48:00.919+05:30"},"s":"I",  "c":"-",        "id":6371601, "ctx":"initandlisten","msg":"Shutting down the FLE Crud thread pool"}
{"t":{"$date":"2024-10-16T17:48:00.920+05:30"},"s":"I",  "c":"COMMAND",  "id":4784901, "ctx":"initandlisten","msg":"Shutting down the MirrorMaestro"}
{"t":{"$date":"2024-10-16T17:48:00.921+05:30"},"s":"I",  "c":"SHARDING", "id":4784902, "ctx":"initandlisten","msg":"Shutting down the WaitForMajorityService"}
{"t":{"$date":"2024-10-16T17:48:00.923+05:30"},"s":"I",  "c":"NETWORK",  "id":20562,   "ctx":"initandlisten","msg":"Shutdown: going to close listening sockets"}
{"t":{"$date":"2024-10-16T17:48:00.924+05:30"},"s":"I",  "c":"NETWORK",  "id":4784905, "ctx":"initandlisten","msg":"Shutting down the global connection pool"}
{"t":{"$date":"2024-10-16T17:48:00.924+05:30"},"s":"I",  "c":"CONTROL",  "id":4784906, "ctx":"initandlisten","msg":"Shutting down the FlowControlTicketholder"}
{"t":{"$date":"2024-10-16T17:48:00.925+05:30"},"s":"I",  "c":"-",        "id":20520,   "ctx":"initandlisten","msg":"Stopping further Flow Control ticket acquisitions."}
{"t":{"$date":"2024-10-16T17:48:00.926+05:30"},"s":"I",  "c":"NETWORK",  "id":4784918, "ctx":"initandlisten","msg":"Shutting down the ReplicaSetMonitor"}
{"t":{"$date":"2024-10-16T17:48:00.928+05:30"},"s":"I",  "c":"SHARDING", "id":4784921, "ctx":"initandlisten","msg":"Shutting down the MigrationUtilExecutor"}
{"t":{"$date":"2024-10-16T17:48:00.930+05:30"},"s":"I",  "c":"ASIO",     "id":22582,   "ctx":"MigrationUtil-TaskExecutor","msg":"Killing all outstanding egress activity."}
{"t":{"$date":"2024-10-16T17:48:00.931+05:30"},"s":"I",  "c":"COMMAND",  "id":4784923, "ctx":"initandlisten","msg":"Shutting down the ServiceEntryPoint"}
{"t":{"$date":"2024-10-16T17:48:00.931+05:30"},"s":"I",  "c":"CONTROL",  "id":4784925, "ctx":"initandlisten","msg":"Shutting down free monitoring"}
{"t":{"$date":"2024-10-16T17:48:00.937+05:30"},"s":"I",  "c":"CONTROL",  "id":4784927, "ctx":"initandlisten","msg":"Shutting down the HealthLog"}
{"t":{"$date":"2024-10-16T17:48:00.938+05:30"},"s":"I",  "c":"CONTROL",  "id":4784928, "ctx":"initandlisten","msg":"Shutting down the TTL monitor"}
{"t":{"$date":"2024-10-16T17:48:00.939+05:30"},"s":"I",  "c":"CONTROL",  "id":6278511, "ctx":"initandlisten","msg":"Shutting down the Change Stream Expired Pre-images Remover"}
{"t":{"$date":"2024-10-16T17:48:00.940+05:30"},"s":"I",  "c":"CONTROL",  "id":4784929, "ctx":"initandlisten","msg":"Acquiring the global lock for shutdown"}
{"t":{"$date":"2024-10-16T17:48:00.941+05:30"},"s":"I",  "c":"-",        "id":4784931, "ctx":"initandlisten","msg":"Dropping the scope cache for shutdown"}
{"t":{"$date":"2024-10-16T17:48:00.943+05:30"},"s":"I",  "c":"CONTROL",  "id":20565,   "ctx":"initandlisten","msg":"Now exiting"}
{"t":{"$date":"2024-10-16T17:48:00.944+05:30"},"s":"I",  "c":"CONTROL",  "id":23138,   "ctx":"initandlisten","msg":"Shutting down","attr":{"exitCode":100}}

C:\Users\Admin>mongo
'mongo' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\Admin>moongo
'moongo' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\Admin>mongosh
Current Mongosh Log ID: 670faf0b31f17fc53b9250c2
Connecting to:          mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+1.10.3
Using MongoDB:          6.0.8
Using Mongosh:          1.10.3

For mongosh info see: https://docs.mongodb.com/mongodb-shell/

------
   The server generated these startup warnings when booting
   2024-10-16T17:06:02.786+05:30: Access control is not enabled for the database. Read and write access to data and configuration is unrestricted
   2024-10-16T17:06:02.787+05:30: This server is bound to localhost. Remote systems will be unable to connect to this server. Start the server with --bind_ip <address> to specify which IP addresses it should serve responses from, or with --bind_ip_all to bind to all interfaces. If this behavior is desired, start the server with --bind_ip 127.0.0.1 to disable this warning
------

test> clear
ReferenceError: clear is not defined
practical> show collections
collectiono db practical0 KiB
Employee           108.00 KiB
practical> db.colection.find({Emp_Namee:"smith",Emp_salary:{$gt:50000}})
ecom                 8.00 KiB
practical> db.collection.find({Emp_Namee:"smith",Emp_salary:{$gt:50000}})
[ractical           80.00 KiB
  {derlust         176.00 KiB
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  }
]
practical> db.collection.sort({Emp_salary:-1}).limit(2);
TypeError: db.collection.sort is not a function
practical> db.collection.find()sort({Emp_salary:-1}).limit(2);
Uncaught:
SyntaxError: Missing semicolon. (1:20)

> 1 | db.collection.find()sort({Emp_salary:-1}).limit(2);
    |                     ^
  2 |

practical> db.collection.find().sort({Emp_salary:-1}).limit(2);
[
  {
    _id: ObjectId("670fa98ec129408b8af1c5cb"),
    Emp_id: 'E1000',
    Emp_Namee: 'Tom',
    Emp_salary: 90000,
    Emp_Dept: 'finance'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 70000,
    Emp_Dept: 'finance'
  }
]
practical> db.collection.deleteOne({Emp_id:"E1000"});
{ acknowledged: true, deletedCount: 1 }
practical> db.collection.find()
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 70000,
    Emp_Dept: 'finance'
  }
]
practical> db.collection.updateOne({Emp_Namee:"David",{Emp_salary:{$inc:10000}}});
Uncaught:
SyntaxError: Unexpected token (1:43)

> 1 | db.collection.updateOne({Emp_Namee:"David",{Emp_salary:{$inc:10000}}});
    |                                            ^
  2 |

practical> db.collection.updateOne({Emp_Namee:"David",{$inc:{Emp_salary:10000}}});
Uncaught:
SyntaxError: Unexpected token (1:43)

> 1 | db.collection.updateOne({Emp_Namee:"David",{$inc:{Emp_salary:10000}}});
    |                                            ^
  2 |

practical> db.collection.updateOne({Emp_Namee:"David",Emp_salary:{$inc:10000}});
MongoInvalidArgumentError: Update document requires atomic operators
practical> db.collection.uodateOne({Emp_Namee:"David"},{$inc:{Emp_salary:5000}});
TypeError: db.collection.uodateOne is not a function
practical> db.collection.updateOne({Emp_Namee:"David"},{$inc:{Emp_salary:5000}});
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
practical> db.collection.find({Emp_Dept:"HR"});
[
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  }
]
practical> db.collection.find({},{Emp_Namee:1,Emp_salary:1});
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_Namee: 'john',
    Emp_salary: 48000
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_Namee: 'smith',
    Emp_salary: 57000
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_Namee: 'Alice',
    Emp_salary: 47000
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_Namee: 'Bob',
    Emp_salary: 59000
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_Namee: 'David',
    Emp_salary: 75000
  }
]
practical> db.collection.find()
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 75000,
    Emp_Dept: 'finance'
  }
]
practical> db.collection.find().sort({Emp_salary:-1});
[
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 75000,
    Emp_Dept: 'finance'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  }
]
practical> db.collection.find().sort({Emp_salary});
ReferenceError: Emp_salary is not defined
practical> db.collection.find().sort({Emp_salary:1});
[
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 75000,
    Emp_Dept: 'finance'
  }
]
practical> db.collection.find().sort({Emp_salary:-1}).limit(3);
[
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 75000,
    Emp_Dept: 'finance'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  }
]
practical> db.collection.find({Emp_salary:{$gt:50000}});
[
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 75000,
    Emp_Dept: 'finance'
  }
]
practical> db.collection.find({Emp_Namee:"smith",Emp_salary:{$gt:50000}});
[
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  }
]
practical> db.collection.find({Emp_salary:{$gte:47000,$lte:60000}});
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  }
]
practical> db.collection.find()
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 48000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 75000,
    Emp_Dept: 'finance'
  }
]
practical> db.collection.updateOne({Emp_id:"E1001"},{$set:{Emp_salary:50000}});
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
practical> db.collection.find()
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 50000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 47000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 59000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 75000,
    Emp_Dept: 'finance'
  }
]
practical> db.collection.updateMany({Emp});
ReferenceError: Emp is not defined
practical> db.collection.updateMany({Emp_Dept:"HR"},{$inc:{Emp_salary:2000}});
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 2,
  modifiedCount: 2,
  upsertedCount: 0
}
practical> db.collection.find()
[
  {
    _id: ObjectId("670fa810c129408b8af1c5c6"),
    Emp_id: 'E1001',
    Emp_Namee: 'john',
    Emp_salary: 50000,
    Emp_Dept: 'Marketing'
  },
  {
    _id: ObjectId("670fa8f8c129408b8af1c5c7"),
    Emp_id: 'E1002',
    Emp_Namee: 'smith',
    Emp_salary: 57000,
    Emp_Dept: 'sales'
  },
  {
    _id: ObjectId("670fa919c129408b8af1c5c8"),
    Emp_id: 'E1003',
    Emp_Namee: 'Alice',
    Emp_salary: 49000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa938c129408b8af1c5c9"),
    Emp_id: 'E1004',
    Emp_Namee: 'Bob',
    Emp_salary: 61000,
    Emp_Dept: 'HR'
  },
  {
    _id: ObjectId("670fa95ec129408b8af1c5ca"),
    Emp_id: 'E1005',
    Emp_Namee: 'David',
    Emp_salary: 75000,
    Emp_Dept: 'finance'
  }
]
practical>



