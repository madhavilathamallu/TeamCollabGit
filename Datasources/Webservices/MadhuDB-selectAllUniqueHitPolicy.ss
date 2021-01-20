function selectAllUniqueHitPolicy(){
	var queryStr = "SELECT \"ApplicantAge\",\"MedicalHistory\",\"ApplicantRiskRating\" , count(*) OVER() AS full_count FROM \"public\".\"uniqueHitPolicy\"";
	var queryStrWithLimit = "SELECT \"ApplicantAge\",\"MedicalHistory\",\"ApplicantRiskRating\" , count(*) OVER() AS full_count FROM \"public\".\"uniqueHitPolicy\" LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("") && $s.getParameter("") != "" && $s.getParameter("") && $s.getParameter("") != ""){
		$s.query("MadhuDB", queryStrWithLimit);
		$s.setLong(1, "");
		$s.setLong(2, "");
		}else{
		$s.query("MadhuDB", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectAllUniqueHitPolicy();
