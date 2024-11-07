// 초 -> 분:초 로 변환
String timeFormat(int seconds) {
  var duration = Duration(seconds: seconds);

  String newDuration = duration.toString().split(".").first.substring(2);
  return newDuration;
}
