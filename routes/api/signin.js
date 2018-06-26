var bcrypt = require('bcrypt');
var connection = require('./../../config');


app.post('/api/signin',function(req,res){
    var email = req.body.mail;
    var password = req.body.pass;
    
//Password is correct....
con.query('SELECT password from users WHERE email=?',
            [email], function(err,data) {
                if(!err) {
                    if(data.length == 0)
                    {
                        res.json({
                            response: 0,
                            message: "User Not found"
                        });
                    }
                    else
                    {
                        const hash = data[0].password.toString();

                        bcrypt.compare(password,hash,function(err,ress){
                            if(ress===true){
                                res.json({
                                    response:1,
                                    message:"Login successfully"
                                });
                            }else{
                                res.json({
                                    response:2,
                                    message:"Email and password doesnt match"
                                });
                            }
                        });
                    }
                }
                else
                {
                    res.json(err);
                }
     
    });
    
});
