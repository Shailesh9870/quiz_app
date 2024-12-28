import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              Image.asset('assets/images/quiz-logo.png',
                width: 300,
                color: const Color.fromARGB(108, 213, 216, 186),
              ),

            // Opacity(
           // opacity: 0.2,
           // child: Image.asset('assets/images/quiz-logo.png',
         // width: 300,
          //),),
          const  SizedBox(height: 90,),
          const  Text("Learn Flutter in the fun way",
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 30,
            ),
          ),
            const SizedBox(height: 30,),
            OutlinedButton.icon(
                onPressed:startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.yellow,
              ),
              icon: Icon(Icons.arrow_right_alt),
                label:const  Text('Start Quiz'),
            )
    ],

        ),
      );
    //throw UnimplementedError();
  }
}