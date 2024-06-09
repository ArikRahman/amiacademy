import 'package:flutter/material.dart';

class DerivativeQuestionWidget extends StatefulWidget {
  const DerivativeQuestionWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DerivativeQuestionWidgetState createState() =>
      _DerivativeQuestionWidgetState();
}

class _DerivativeQuestionWidgetState extends State<DerivativeQuestionWidget> {
  final TextEditingController _controller = TextEditingController();
  String _resultMessage = '';
  final String _currentQuestion = 'd/dx of x²';
  final String _correctAnswer = '2x';

  void _checkAnswer() {
    if (_controller.text.trim() == _correctAnswer) {
      setState(() {
        _resultMessage = 'Correct! The derivative of x^2 is 2x.';
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
        const Text(
          'What is the derivative of the following function?',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20),
        Text(
          _currentQuestion,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Enter your answer',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: _checkAnswer,
          child: const Text('Submit'),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            _resultMessage,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
