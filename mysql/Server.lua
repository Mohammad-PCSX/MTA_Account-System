local DataBase = dbConnect("mysql","dbname=server;host=127.0.0.1;port=3306;charset=utf8","root","")

if DataBase then 
    print("Database Connect Shod")
else
    print("Database Connect Nashod")
end

function MySQL()
    return DataBase
end