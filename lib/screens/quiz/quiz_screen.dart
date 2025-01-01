import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/controllers/questioncontrollers.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Flutter shows the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: _controller.nextQuestion,
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.white), // Adjust color as needed
            ),
          ),
        ],
      ),
      body: Body(key: Key('QuizBody')), // Provide a unique Key here
    );
  }
}
