import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon2024/models/webtoon_model.dart';

class Webtoon extends StatelessWidget {
  final WebtoonModel webtoon;

  const Webtoon({
    super.key,
    required this.webtoon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/details', extra: webtoon);
      },
      child: Column(
        children: [
          Hero(
            tag: webtoon.id,
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
              child: Image.network(webtoon.thumb),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 250,
            child: Text(
              webtoon.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
