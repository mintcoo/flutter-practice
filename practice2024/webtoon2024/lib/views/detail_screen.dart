import 'package:flutter/material.dart';
import 'package:webtoon2024/data/api/api_service.dart';
import 'package:webtoon2024/models/webtoon_detail_model.dart';
import 'package:webtoon2024/models/webtoon_episode_model.dart';
import 'package:webtoon2024/models/webtoon_model.dart';

class DetailScreen extends StatefulWidget {
  final WebtoonModel webtoon;
  const DetailScreen({
    super.key,
    required this.webtoon,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoonDetail;
  late Future<List<WebtoonEpisodeModel>> webtoonEpisodes;

  @override
  void initState() {
    super.initState();
    webtoonDetail = ApiService.getDetailToon(widget.webtoon.id);
    webtoonEpisodes = ApiService.getLatestEpisodes(widget.webtoon.id);
  }

  @override
  Widget build(BuildContext context) {
    // HomeScreen이 아니기때문에 Scaffold 다시 만들어줌
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        shadowColor: Colors.black,
        elevation: 2,
        centerTitle: true,
        title: Text(
          widget.webtoon.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Hero(
              tag: widget.webtoon.id,
              child: Container(
                width: 250,
                clipBehavior: Clip.hardEdge,
                // 이걸해야 둥글게 이미지 잘림
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(7, 7),
                        color: Colors.black.withOpacity(0.5),
                      )
                    ]),
                child: Image.network(widget.webtoon.thumb),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
