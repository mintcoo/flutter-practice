import 'package:flutter/material.dart';

Color changeAgeColor(String ageGrade) {
  if (ageGrade.contains("12")) {
    return Colors.blue;
  } else if (ageGrade.contains("15")) {
    return Colors.amber;
  } else if (ageGrade.contains("18")) {
    return Colors.red.shade400;
  }

  return Colors.green;
}
