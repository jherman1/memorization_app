
import 'dart:math';

class StringUtility {

  static List<String> getWordListFromString(String content) {
    return content.split(' ');
  }

  static String getMemorizationString(String content, double visibleAmount, String memId) {
    List<String> wordList = getWordListFromString(content);

    Random rand = Random(memId.hashCode);

    String memString = '';

    for(int i = 0; i < wordList.length; i++) {
      print('[$i] - Current word: ${wordList[i]}');
      double curr = rand.nextDouble();
      if(curr <= visibleAmount) {
        print('\t $curr <= $visibleAmount, so adding word');
        memString += '${wordList[i]} ';
      } else {
        print('\t $curr > $visibleAmount, so adding _');
        memString += '${wordList[i].replaceAll(RegExp(r'.'), '_')} ';
      }
    }

    return memString;
  }
}