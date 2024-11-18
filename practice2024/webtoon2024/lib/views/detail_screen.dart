import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webtoon2024/data/api/api_service.dart';
import 'package:webtoon2024/models/webtoon_detail_model.dart';
import 'package:webtoon2024/models/webtoon_episode_model.dart';
import 'package:webtoon2024/models/webtoon_model.dart';
import 'package:webtoon2024/utils/change_color.dart';
import 'package:webtoon2024/widgets/episode_widget.dart';
import 'package:webtoon2024/widgets/info_btn_widget.dart';

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
  late SharedPreferences prefs;
  bool extendAbout = false;
  bool isLiked = false;

  Future initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    final likedToons = prefs.getStringList('likedToons');
    if (likedToons != null) {
      if (likedToons.contains(widget.webtoon.id)) {
        setState(() {
          isLiked = true;
        });
      }
    } else {
      await prefs.setStringList('likedToons', []);
    }
  }

  @override
  void initState() {
    super.initState();
    webtoonDetail = ApiService.getDetailToon(widget.webtoon.id);
    webtoonEpisodes = ApiService.getLatestEpisodes(widget.webtoon.id);
    initPrefs();
  }

  void onClickExtend() {
    setState(() {
      extendAbout = !extendAbout;
    });
  }

  onHeartTap() async {
    final likedToons = prefs.getStringList('likedToons');
    if (likedToons != null) {
      if (isLiked) {
        likedToons.remove(widget.webtoon.id);
      } else {
        likedToons.add(widget.webtoon.id);
      }
      // 수정된 리스트를 폰에 다시 저장
      await prefs.setStringList('likedToons', likedToons);
      setState(() {
        isLiked = !isLiked;
      });
    }
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
        actions: [
          IconButton(
            onPressed: onHeartTap,
            icon: Icon(
              isLiked ? Icons.favorite : Icons.favorite_outline,
            ),
          )
        ],
        title: Text(
          widget.webtoon.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Hero(
                tag: widget.webtoon.id,
                child: Container(
                  width: 220,
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
            FutureBuilder(
              future: webtoonDetail,
              builder: (context, snapshot) {
                if (!snapshot.hasData || snapshot.data == null) {
                  return const Text("...");
                }
                final webtoonAge = snapshot.data!.age;

                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.data!.about,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          overflow: extendAbout ? null : TextOverflow.ellipsis,
                          maxLines: extendAbout ? null : 7,
                        ),
                        Transform.translate(
                          offset: const Offset(0, -10), // 위로 이동
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: onClickExtend,
                                icon: Icon(
                                  extendAbout
                                      ? Icons.arrow_drop_up_outlined
                                      : Icons.arrow_drop_down_outlined,
                                ),
                                padding: EdgeInsets.zero,
                                visualDensity: VisualDensity.compact,
                                iconSize: 36,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            InfoBtn(
                              text: snapshot.data!.genre,
                              bgColor: Colors.black,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            InfoBtn(
                              text: snapshot.data!.age,
                              bgColor: changeAgeColor(webtoonAge),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        FutureBuilder(
                          future: webtoonEpisodes,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  for (var episode in snapshot.data!)
                                    Episode(
                                      episode: episode,
                                      ageGrade: webtoonAge,
                                      webtoonId: widget.webtoon.id,
                                    )
                                ],
                              );
                            } else {
                              return const Center(
                                heightFactor: 3,
                                child: CircularProgressIndicator(),
                                // 로딩할때 가운데 뜨는 프로그래스바
                              );
                            }
                          },
                        )
                      ],
                    ),
                  );
                }
                return const Text("...");
              },
            )
          ],
        ),
      ),
    );
  }
}
