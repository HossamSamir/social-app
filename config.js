// MySQL database
var mysql = require('mysql');

// Config connection
con = mysql.createConnection({
	host: '159.89.95.28',
	user: 'user',
	password: '12345678',
	database: 'test'
});
