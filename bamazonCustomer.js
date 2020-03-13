var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
	host:"localhost",
	port:3306,
	user:"root",
	password:"password",
	database:"bamazon"
});

connection.connect(function(err){
	if(err)throw err;
	console.log("connected as id" + connection.threadId);
});

// Running this application will first display all of the items available for sale.
// Include the ids, names, and prices of products for sale.

var displayItems = function() {
    var query = "Select * FROM products";
    
    connection.query(query, function(err, res){
		if(err) throw err;
		var displayTable = new Table ({
			head: ["Item ID", "Type of Trip", "Inshore / Offshore", "Price", "Quantity"],
			colWidths: [15,25,25,15,15]
        });
        
        for(var i = 0; i < res.length; i++){
			displayTable.push(
				[res[i].item_id,res[i].product_name, res[i].department_name, res[i].price, res[i].stock_quantity]
				);
		}
        console.log(displayTable.toString());
    });
}
displayItems();