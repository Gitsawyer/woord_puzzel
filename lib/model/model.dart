class Model {
  List<BaseLetter> baseWords;
  List<AnswerBlock> answerBlocks;

  Model(this.baseWords, this.answerBlocks);
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
  int baseWordReference;

  List<AnswerLetter> answerGrid = List.filled(9, AnswerLetter());

  AnswerBlock(this.frameLetters, this.answer, this.baseWordReference);
}

class AnswerLetter {
  int? baseWordIndex;
}