class Utils {
  static String intWithSuffix(int i) {
    assert(i >= 0);
    final modHundred = i % 100;
    final endsInTeen = modHundred > 10 && modHundred < 20;
    if (endsInTeen) {
      return "${i}th";
    }
    switch (i % 10) {
      case 1:
        return "${i}st";
      case 2:
        return "${i}nd";
      case 3:
        return "${i}rd";
      default:
        return "${i}th";
    }
  }
}
