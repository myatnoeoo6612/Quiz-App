import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controller/question_controller.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding*2),
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26, width: 2),
          borderRadius: BorderRadius.circular(50)
      ),

      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          print(controller.animation?.value);
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constranints) => Container(
                  width: constranints.maxWidth * controller.animation?.value,
                  decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),
              Positioned.fill(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${(controller.animation?.value * 60).round()} sec"),
                          WebsafeSvg.asset("assets/icons/clock.svg"),
                        ],
                      ))
              ),
            ],
          );
        }
      ),
    );
  }
}