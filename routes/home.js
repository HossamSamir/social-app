function travers(req, res) {
	sql.qry('SELECT COUNT(id) AS cnt FROM users', function(usersCount) {
		// do someting with userCount ...	
	});
}

module.exports = travers;
