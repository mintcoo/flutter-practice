String formatWithCommas(int number) {
  final numberStr = number.toString();
  final regExp = RegExp(r'\B(?=(\d{3})+(?!\d))');
  return numberStr.replaceAllMapped(regExp, (match) => ',\u200A');
}
