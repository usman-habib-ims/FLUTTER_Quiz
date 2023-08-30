import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});
  String Swirl;
  Answer(this.Swirl);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        Swirl
      ),
    );
  }
}