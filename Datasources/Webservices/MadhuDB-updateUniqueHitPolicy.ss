function updateUniqueHitPolicy(){
	var queryStr = "UPDATE \"public\".\"uniqueHitPolicy\" SET \"ApplicantAge\"=?,\"MedicalHistory\"=?,\"ApplicantRiskRating\"=?";
	try{
		$s.query("MadhuDB", queryStr);
	$s.setBigDecimal(1, "ApplicantAge");
	$s.setString(2, "MedicalHistory");
	$s.setString(3, "ApplicantRiskRating");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateUniqueHitPolicy();
