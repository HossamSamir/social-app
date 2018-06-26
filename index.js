const path = require('path');
const config = require('./config');
// express configs
const express = require('express');
app = express();
var bodyParser = require('body-parser');      //el package bt3t kosom el post ely kant mtl3a myteen aboyaa !!! kont el mfrood atwk3 ana el mwdoo3 da mn el NULL xD
const PORT = process.env.PORT || 80;
app.listen(PORT, () => console.log(`Listening on ${PORT}`));
// Actually connect
con.connect(function(err) {
	if (err) {
		console.error('error connecting: ' + err.stack);
		return;
	}

	console.log('mysql connected as id ' + con.threadId);
});
app.use(bodyParser.urlencoded({extended: false}));   //El line da w ely t7to 3lshan el pos w w5deen el package bt3t el body-parser 3lshan kosom node js :D
app.use(bodyParser.json());                          // aywa da el line ely t7to 
// Have some SQL commons
sql = require('./sql/common');

// importing routes
const home = require('./routes/home');
const hello = require('./routes/hello')
// routes
app.get('/admin', home);
app.get('/', hello)

// API
require('./routes/api/signin');
require('./routes/api/signup');
require('./routes/api/verifycode');
require('./routes/api/user_location');
