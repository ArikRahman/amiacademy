import 'package:flutter/material.dart';
// import 'package:amiacademy/features/math/presentation/widgets/math_question_widget.dart';
import 'package:amiacademy/features/math/presentation/widgets/derivatives_practice.dart';

class MathScreen extends StatelessWidget {
  const MathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Ami Academy'),
      ),
      body: const Center(
        // child: MathQuestionWidget(),
        child: DerivativeQuestionWidget(),
      ),
    );
  }
}
