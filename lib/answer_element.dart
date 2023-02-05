import 'package:flutter/material.dart';
class AnswerElement extends StatelessWidget {
  const AnswerElement(
      {Key? key,
      required this.selectedAnswer,
      required this.answerText,
      required this.answerIndex,
      required this.onChanged})
      : super(key: key);
  final int? selectedAnswer;
  final int answerIndex;
  final String answerText;
  final Function(int?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: RadioListTile<int>(
        title: Text(
          answerText,
          style:
              TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF808080)),
        ),
        value: answerIndex,
        activeColor: Colors.yellow,
        groupValue: selectedAnswer,
        onChanged: onChanged,
      ),
    );
  }
}
