
enum ServiceHeaders {
  headers({
    "content-type": "application/json",
    "authorization": "apikey"
  });


  final Map<String, dynamic> header;

  const ServiceHeaders(this.header);
}


enum ServiceUrl {
  url('https://api.collectapi.com/football');

  final String name;

  const ServiceUrl(this.name);
}


enum ServiceTags {
  leaguesList('/leaguesList'),
  league('/league?data.league='),
  resultsData('/results?data.league=');

  final String name;

  const ServiceTags(this.name);
}
