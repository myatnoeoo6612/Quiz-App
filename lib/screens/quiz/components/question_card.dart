import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Questions.dart';
import 'body.dart';
import 'option.dart';


class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Color(0xff00c19c),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            sample_data[0]['question'] ??"null",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.grey[800]),
          ),
          SizedBox(height: kDefaultPadding /2,),
          Option(),
          Option(),
          Option(),
          Option(),
        ],
      ),
    );
  }
}