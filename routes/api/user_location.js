app.get('/api/user_location',function(req,res){
    var id = req.param("id");
    var location = req.param("location");
    var latitude = req.param("latitude");
    var longitude = req.param("longitude");
    var region = req.param("region");

    con.query('UPDATE users SET location=?,latitude=?,longitude=?,region=? WHERE id=?',
        [location,latitude,longitude,region,user_id],function(err,data) {
        if(!err) res.json({reply:1});
        else res.json({reply:0});
    });
});
