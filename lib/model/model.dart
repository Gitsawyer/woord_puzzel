class Model {
  late List<BaseWord> baseWords;
  late List<AnswerBlock> answerBlocks;


  /**
   * input => 30 chars
   * 0-8 Base word
   * 9-17 Answer
   * 18-29 frameLetters
   */
  Model(String code) {
    // Verification
    assert(code.length % 30 == 0);

    baseWords = List.empty(growable: true);
    answerBlocks = List.empty(growable: true);

    for (int i = 0; i < code.length; i+=30) {
      baseWords.add(BaseWord(code.substring(i, i+9)));
      answerBlocks.add(AnswerBlock(code.substring(i+18,i+30), code.substring(i+9,i+18), null));

    }

  }
}

class BaseWord {
  late List<BaseLetter> baseLetters;

  BaseWord(String word) {
    baseLetters = List.generate(9, (index) => BaseLetter(word.codeUnitAt(index), false));
  }
}

class BaseLetter {
  
  int letterCode;
  bool isUsed;

  BaseLetter(this.letterCode, this.isUsed);
  
  String getString() {
    return String.fromCharCode(letterCode);
  }
}

class AnswerBlock {
  String frameLetters;
  String answer;
  int? baseWordReference;

  List<AnswerLetter> answerGrid = List.filled(9, AnswerLetter());

  AnswerBlock(this.frameLetters, this.answer, this.baseWordReference);
}

class AnswerLetter {
  int? baseWordIndex;
}