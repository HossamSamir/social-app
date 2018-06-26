var connection = require('./../../config');
var bcrypt = require('bcrypt');
var today = new Date();



app.post('/api/signup',function(req,res){
    var username = req.body.user;
    var password = req.body.pass;
    var email = req.body.mail;
    var sex = req.body.sexx;
    var date = today;

    const saltRounds = 10;

    con.query('SELECT user_id FROM users WHERE email=? LIMIT 1', [email], function(err,data) {
        if (err) 
            throw err;
                if(data.length > 0)
                {
                    // already registered
                    res.json({
                        response: 0
                     });
                }
 //               else if(password.length < 8){
 //                   res.json({
 //                       // Password must be more than 8 characters 
 //                       response :1
 //                   });
 //               }
                else
                {
                    // not registered
    bcrypt.hash(password, saltRounds, function(err, hash) {
                        // Store hash in your password DB.
        con.query('INSERT INTO users(username,password,email,sex) VALUES(?,?,?,?)',[username,hash,email,sex], function(err,data) {                
                        if(!err) {
                            res.json({
                                response: 2
                            });
                        }
                        else
                        {
                            res.json(err);
                        }
                    })
                });
                }
            })
    });
