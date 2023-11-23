import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webtoonapp/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    // 웹툰 모델 만들고나서 나중에 빈걸로 변수 하나 만듬
    final url = Uri.parse("$baseUrl/$today");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final toon = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(toon);
      }
      print(webtoonInstances);
      return webtoonInstances;
    }
    throw Error();
  }
}
