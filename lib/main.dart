import 'package:flutter/material.dart';
import 'package:quiz_app/screens/welcome_screen.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: QuizScreen(),
    );
  }
}
