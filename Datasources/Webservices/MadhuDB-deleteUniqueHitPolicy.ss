function deleteUniqueHitPolicy(){
	var queryStr = "DELETE FROM \"public\".\"uniqueHitPolicy\"";
	try{
		$s.query("MadhuDB", queryStr);
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteUniqueHitPolicy();
