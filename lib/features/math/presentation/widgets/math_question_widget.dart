import 'package:flutter/material.dart';

class MathQuestionWidget extends StatefulWidget {
  @override
  _MathQuestionWidgetState createState() => _MathQuestionWidgetState();
}

class _MathQuestionWidgetState extends State<MathQuestionWidget> {
  final TextEditingController _controller = TextEditingController();
  String _resultMessage = '';

  void _checkAnswer() {
    if (_controller.text == '2') {
      setState(() {
        _resultMessage = 'Correct! 1 + 1 = 2';
      });
    } else {
      setState(() {
        _resultMessage = 'Incorrect, please try again.';
      });
    }
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'What is 1 + 1?',
          style: TextStyle(fontSize: 24),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter your answer',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: _checkAnswer,
          child: Text('Submit'),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            _resultMessage,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
