import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
 List<String> selectedAnswer=[];

 // Widget? activeScreen;
 var activeScreen= 'start-screen';
  //@override
  //void initState() {
   // activeScreen = StartScreen(switchScreen);
   // super.initState();
  //}

  void switchScreen() {
    setState(() {
     // activeScreen = QuestionScreen(onSelectAnswer: chooseAnswer,);
      activeScreen='questions-screen';
    });
  }

  void chooseAnswer(String answer){

   selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length)
   {
     setState(() {
       //selectedAnswer = [];
       activeScreen = 'results-screen';
     });
   }
  }

  void restartQuiz(){
    setState(() {
      selectedAnswer=[];
      activeScreen='questions_screen';
    });
  }
  @override
  Widget build(BuildContext context) {
       Widget screenWidget= StartScreen(switchScreen);

    if (activeScreen =='questions-screen'){
      screenWidget= QuestionScreen(
          onSelectAnswer:chooseAnswer ,
      );
    }

    if (activeScreen=='results-screen'){
      screenWidget=  ResultsScreen(
        chosenAnswer: selectedAnswer,
      onRestart: restartQuiz,);
    }



    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.orangeAccent,
            Colors.blueGrey,
            Colors.lightGreen
          ], begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
          ),
          child: screenWidget,
          // child: activeScreen=='start-screen' ? StartScreen(switchScreen): const QuestionScreen(),
        ),
      ),
    );
  }
}
