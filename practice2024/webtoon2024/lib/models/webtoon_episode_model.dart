class WebtoonEpisodeModel {
  final String date, title, rating, id;

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : date = json["date"],
        title = json["title"],
        rating = json["rating"],
        id = json["id"];
}
