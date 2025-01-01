import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizapp/constants.dart';
import 'package:quizapp/controllers/questioncontrollers.dart';
import 'package:quizapp/screens/welcome/welcome.dart';


class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Navigate to WelcomeScreen
                  Get.off(() => WelcomeScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kSecondaryColor, // Button background color
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Go to Home",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
