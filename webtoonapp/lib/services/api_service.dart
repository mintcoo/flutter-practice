import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webtoonapp/models/webtoon_model.dart';

class ApiService {
  // 모든 method와 property를 static으로 바꿈 왜냐면 state가 없으니까 고정
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
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

      return webtoonInstances;
    }
    throw Error();
  }
}
