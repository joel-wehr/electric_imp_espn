function espnGet() {
    //http://api.espn.com/:version/:resource/:method?apikey=:yourkey
    local espnurl = "http://api.espn.com/v1/now?apikey=yourapikeygoeshere&leagues=nfl&teams=23"
    //local espnurl = "http://api.espn.com/v1/sports/football/nfl/teams?apikey=scrv5tx9uq643veat22ceexx&id=23" //List NFL Teams and Info
    local request = http.get(espnurl);
	local response = request.sendsync();
	if(response.statuscode != 200) {
	    server.log("error sending message: " + response.body);
	    return null;
	}
    server.log(response.body);
}
