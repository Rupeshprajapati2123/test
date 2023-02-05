import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
// import 'package:qwikskills/utils/consts.dart';

class QuestionElement extends StatelessWidget {
  const QuestionElement(
      {Key? key, required this.question, required this.questionNumber})
      : super(key: key);
  final int questionNumber;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Q$questionNumber',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        SizedBox(width:5),
        Flexible(
          child: Text(question),
        ),
      ],
    );
  }
}
