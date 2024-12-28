import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question.dart';
class QuestionScreen extends StatefulWidget{
  const QuestionScreen({
    super.key,
    required this.onSelectAnswer
  });

  final void Function (String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen>{
  //const _QuestionScreen({super.key});

  var currentQuestionIndex=0;

  void answerQuestion(String selectedAnswer){
    //currentQuestionIndex=currentQuestionIndex+1;
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion= questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
           Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color:Color.fromARGB(242, 228, 226, 211),
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ) ,
             textAlign: TextAlign.center,
           ),
          const SizedBox(height: 50,),
          ...currentQuestion.getShuffledAnswer().map((answer) {
             return AnswerButton(
               onTap:(){
                 answerQuestion(answer);
               },
               answerText: answer,
             );
           },
          ),

          ],

         ),
      ),
    );
    throw UnimplementedError();
  }

}