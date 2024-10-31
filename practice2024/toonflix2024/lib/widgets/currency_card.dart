import 'package:flutter/material.dart';
import 'package:toonflix2024/utils/number_formatter.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code;
  final int money;
  final IconData icon;
  final bool isWhite;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.money,
    required this.icon,
    required this.isWhite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: isWhite ? Colors.white : const Color(0xFF1F2123),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isWhite ? Colors.black : Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      formatWithCommas(money),
                      style: TextStyle(
                        color: isWhite ? Colors.black : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: isWhite
                            ? Colors.black.withOpacity(0.8)
                            : Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 10),
                child: Icon(
                  icon,
                  color: isWhite ? Colors.black : Colors.white,
                  size: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
