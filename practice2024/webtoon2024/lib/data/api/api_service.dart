import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon2024/data/const.dart';
import 'package:webtoon2024/models/webtoon_detail_model.dart';
import 'package:webtoon2024/models/webtoon_episode_model.dart';
import 'package:webtoon2024/models/webtoon_model.dart';

class ApiService {
  // 오늘의 웹툰 목록 가져오기
  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonList = [];

    final url = Uri.parse("$baseUrl/$today");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final toonInstance = WebtoonModel.fromJson(webtoon);
        webtoonList.add(toonInstance);
      }
      return webtoonList;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getDetailToon(String id) async {
    final url = Uri.parse("$baseUrl/$id");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getLatestEpisodes(String id) async {
    List<WebtoonEpisodeModel> episodeList = [];
    final url = Uri.parse("$baseUrl/$id/episode");
    final response = await http.get(url);
    print(response);
    if (response.statusCode == 200) {
      final episodes = jsonDecode(response.body);
      for (var episode in episodes) {
        episodeList.add(WebtoonEpisodeModel.fromJson(episode));
      }
      return episodeList;
    }
    throw Error();
  }
}
