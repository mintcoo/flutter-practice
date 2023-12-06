import 'package:flutter/material.dart';
import 'package:webtoonapp/models/webtoon_detail_model.dart';
import 'package:webtoonapp/models/webtoon_model.dart';
import 'package:webtoonapp/services/api_service.dart';

class DetailWebtoon extends StatefulWidget {
  final WebtoonModel webtoon;
  final String id;

  const DetailWebtoon({
    super.key,
    required this.webtoon,
    required this.id,
  });

  @override
  State<DetailWebtoon> createState() => _DetailWebtoonState();
}

class _DetailWebtoonState extends State<DetailWebtoon> {
  late final Future<WebtoonDetailModel> webtoonDetail;

  @override
  void initState() {
    super.initState();
    webtoonDetail = ApiService.getToonById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
          widget.webtoon.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: widget.webtoon.id,
                child: Container(
                  width: 250,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(7, 7),
                          color: Colors.black.withOpacity(0.5),
                        )
                      ]),
                  child: Image.network(
                    widget.webtoon.thumb,
                    headers: const {
                      "User-Agent":
                          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                    },
                  ),
                ),
              ),
            ],
          ),
          FutureBuilder(
            future: webtoonDetail,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(snapshot.data!.genre),
                  ],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
                // 로딩할때 가운데 뜨는 프로그래스바
              );
            },
          ),
        ],
      ),
    );
  }
}
