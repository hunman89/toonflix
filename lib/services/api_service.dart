import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    const url = '$baseUrl/$today';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl/$id");
    final res = await http.get(url);
    if (res.statusCode == 200) {
      return WebtoonDetailModel.fronJson(jsonDecode(res.body));
    }
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getToonEpisodeById(String id) async {
    List<WebtoonEpisodeModel> webtoonEpisodes = [];

    final url = Uri.parse("$baseUrl/$id/episodes");
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final episodes = jsonDecode(res.body);
      for (var episode in episodes) {
        webtoonEpisodes.add(WebtoonEpisodeModel.fromJson(episode));
      }
      return webtoonEpisodes;
    }
    throw Error();
  }
}
