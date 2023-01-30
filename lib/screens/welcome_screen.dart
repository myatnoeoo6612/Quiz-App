import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2,),
                Text(
                  "Let's Play Quiz",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.grey[850], fontWeight: FontWeight.bold
                  ),
                ),
                Text("Enter your information below"),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    //filled: true,
                    //fillColor: Color(0xFFE5E4E2),
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.9),
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Text("Let's Start Quiz",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: Colors.grey[850]),
                    ),
                  ),
                ),
                Spacer(flex: 2,),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
