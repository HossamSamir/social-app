var bcrypt = require('bcrypt');
var connection = require('./../../config');


app.post('/api/signin',function(req,res){
    var email = req.param("email");
    var password = req.param("password");
    
    var hashpass = bcrypt.compareSync(password, hash);
    if(password==hashpass){
//Password is correct....
connection.query('SELECT * from users WHERE username=? AND password=? LIMIT 1',
            [email,hashpass], function(err,data) {
            if(err) {
                res.json({
                    status:false,
                    message:"Email and password does not match"
                    });
            }
            else
        {
            res.json({
              status:true,
              message:"Login successfully"
             });
        }
     
    });
    }
});
