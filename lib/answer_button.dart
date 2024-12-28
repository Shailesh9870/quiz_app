import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
 const AnswerButton({super.key, required this. onTap,required this. answerText});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding:const  EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 40),

          backgroundColor: Color.fromARGB(100, 23, 193, 223),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child:  Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );

    throw UnimplementedError();
  }
}