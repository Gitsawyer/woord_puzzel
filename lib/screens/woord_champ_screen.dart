import 'package:flutter/material.dart';

import '../model/model.dart';

String modelString = "maritiememaritiemeiawiamxytlstzeeroveryzeeroverygbkpvyfrxent";

class WoordChampScreen extends StatelessWidget {
  static String get route => '/WoordChampScreen';

  Model model = new Model(modelString);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        createAntwoordDeel(model.answerBlocks),
        createBasisWoordDeel(model.baseWords)
      ],
    );
  }

  Widget createAntwoordDeel(List<AnswerBlock> answerBlocks) {
    return Row(
      children: [
        for (AnswerBlock answerBlock in answerBlocks) createAntwoordBlok(answerBlock)
      ],
    );
  }

  Widget createAntwoordBlok(AnswerBlock answerBlock) {
    return Text(
      answerBlock.answer
    );
  }

  Widget createBasisWoordDeel(List<BaseWord> baseWords) {
    return Column(
      children: [

      ],
    );
  }

}