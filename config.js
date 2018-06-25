// MySQL database

var mysql = require('mysql');

// Config connection
con = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'social_chat'
});


