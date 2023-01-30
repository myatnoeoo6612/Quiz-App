import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/quiz/components/progressbar.dart';
import 'package:quiz_app/screens/quiz/components/question_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProgressBar(),
                  //SizedBox(height: kDefaultPadding,),
                  Text.rich(
                    TextSpan(
                      text: "Question 1",
                      style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.grey[800]),
                      children: [
                        TextSpan(
                          text: "/10",
                          style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(color: Colors.grey[800]),
                        )
                      ]
                    )
                  ),
                  Divider(thickness: 1.5,),
                  SizedBox(height: kDefaultPadding * 2.5,),
                  QuestionCard(),
                ],
              ),
            ))
      ],
    );
  }
}








