var mysql = require("mysql");

// create the connection information for the sql database
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "palacios",
    database: "products_db"
});

connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    products();
});

function products() {
    connection.query("SELECT"
        product_name, department_name, stock_quantity, price,
        FROM "products",
        function(err, res) {
            if (err) throw err;

            // Log all results of the SELECT statement
            console.log(res);
            connection.end();
        });
}