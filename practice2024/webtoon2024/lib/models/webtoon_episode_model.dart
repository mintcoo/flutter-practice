class WebtoonEpisodeModel {
  final String date, thumb, rating, id;

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : date = json["date"],
        thumb = json["thumb"],
        rating = json["rating"],
        id = json["id"];
}
