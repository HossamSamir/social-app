const path = require('path');
const config = require('./config');
// express configs
const express = require('express');
app = express();
const PORT = process.env.PORT || 80;
app.listen(PORT, () => console.log(`Listening on ${PORT}`));
// Actually connect
// con.connect(function(err) {
// 	if (err) {
// 		console.error('error connecting: ' + err.stack);
// 		return;
// 	}

// 	console.log('mysql connected as id ' + con.threadId);
// });
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
