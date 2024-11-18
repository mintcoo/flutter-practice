import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webtoon2024/models/webtoon_episode_model.dart';
import 'package:webtoon2024/utils/change_color.dart';

class Episode extends StatelessWidget {
  final WebtoonEpisodeModel episode;
  final String ageGrade;
  final String webtoonId;

  const Episode({
    super.key,
    required this.episode,
    required this.ageGrade,
    required this.webtoonId,
  });

  void onClickEpisode() async {
    await launchUrlString(
        "https://comic.naver.com/webtoon/detail?titleId=$webtoonId&no=${episode.id}");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClickEpisode,
      child: Container(
        margin: const EdgeInsets.only(bottom: 7),
        decoration: BoxDecoration(
            color: changeAgeColor(ageGrade),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                offset: const Offset(3, 3),
                color: Colors.black.withOpacity(0.5),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  episode.title.trim(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
