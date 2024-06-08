import 'package:flutter/material.dart';
import 'package:amiacademy/features/math/presentation/widgets/math_question_widget.dart';

class MathScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Ami Academy'),
      ),
      body: Center(
        child: MathQuestionWidget(),
      ),
    );
  }
}
