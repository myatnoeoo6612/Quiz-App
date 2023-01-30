import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:quiz_app/screens/quiz/components/body.dart';
class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff00c19c),
          elevation: 4,
          actions: [
            TextButton(onPressed: (){},

                child: Text("Skip",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: Colors.grey[850]),))
          ],

        ),

      ),

      body: Body(),
    );
  }
}



