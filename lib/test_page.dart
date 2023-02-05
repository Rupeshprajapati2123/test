import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import './answer_element.dart';
import './question_element.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);
  static const String id="TestPage";
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int _currentSelectedQuestion = 0;
  List<int?> _selectedAnswers = List.generate(20, (index) => -1);
  List<bool> _requiresReview = List.generate(20, (index) => false);
  ScrollController _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 12, vertical: 25),
        child: (Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(Icons.arrow_back_ios, color: Colors.black)),
                ),
                Spacer(),
                Text('Practice Test',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700)),
                Spacer(flex: 2),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Text("Question ${_currentSelectedQuestion + 1} of 20"),
                Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        side: BorderSide(
                          color: Color(0XFFBA1C1C),
                        )),
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Exit Quiz',
                      style: TextStyle(color: Color(0XFFBA1C1C)),
                    ))
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 12,
              child: ListView.builder(
                  itemCount: 20,
                  controller: _controller,
                  padding: EdgeInsets.all(0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_context, _index) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(0),
                            elevation: 0,
                            side: _currentSelectedQuestion == _index
                                ? BorderSide(color: Color(0XFF2C88FF), width: 1)
                                : _requiresReview[_index]
                                    ? BorderSide(
                                        color: Color(0XFFBA1C1C), width: 1)
                                    : BorderSide.none,
                            primary: _currentSelectedQuestion != _index
                                ? _requiresReview[_index]
                                    ? Color(0XFFFFE2E2)
                                    : _selectedAnswers[_index] == -1
                                        ? Color(0XFFEBF1F9)
                                        : Color(0xFF42D37B)
                                : Color(0XFFEBF1F9)),
                        child: Text(
                          (_index + 1).toString(),
                          style: TextStyle(
                              color: _currentSelectedQuestion == _index
                                  ? Color(0XFF2C88FF)
                                  : _requiresReview[_index]
                                      ? Color(0xFFBA1C1C)
                                      : _selectedAnswers[_index] == -1
                                          ? Color(0XFF808080)
                                          : Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            _currentSelectedQuestion = _index;
                          });
                        },
                      )),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Text.rich(TextSpan(
                        text: 'Category : ',
                        style: TextStyle(fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                              text:
                                  'Manage, optimize, and troubleshoot the network.',
                              style: TextStyle(fontWeight: FontWeight.w400)),
                        ])),
                    SizedBox(height: 25),
                    QuestionElement(
                      questionNumber: _currentSelectedQuestion + 1,
                      question:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit?',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (_, _index) => AnswerElement(
                            selectedAnswer:
                                _selectedAnswers[_currentSelectedQuestion],
                            answerText:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie',
                            answerIndex: _index,
                            onChanged: (int? value) {
                              setState(() {
                                _selectedAnswers[_currentSelectedQuestion] =
                                    value;
                              });
                            })),
                    SizedBox(
                      height: 20,
                    ),
                    // BigWideButton(
                    //     onPressed: () => print("SHOW"),
                    //     text: 'Show Explanation')
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 12, vertical: 5),
        child: Row(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.yellow),
                onPressed: _currentSelectedQuestion > 0
                    ? () {
                        _controller.animateTo(_controller.position.pixels - 40,
                            duration: Duration(milliseconds: 50),
                            curve: Curves.linear);
                        setState(() {
                          _currentSelectedQuestion--;
                        });
                      }
                    : null,
                child: Icon(Icons.arrow_back)),
            Spacer(),
            Checkbox(
                value: _requiresReview[_currentSelectedQuestion],
                onChanged: (val) => setState(() {
                      _requiresReview[_currentSelectedQuestion] = val ?? false;
                    })),
            Text('Review Later'),
            Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.yellow),
                onPressed: _currentSelectedQuestion != 19
                    ? () {
                        _controller.animateTo(_controller.position.pixels + 40,
                            duration: Duration(milliseconds: 50),
                            curve: Curves.linear);
                        setState(() {
                          _currentSelectedQuestion++;
                        });
                      }
                    : null,
                child: Icon(Icons.arrow_forward)),
          ],
        ),
      ),
    );
  }
}
