import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
 const StyledText(this.text ,{super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
   return Text(text,
     style: const TextStyle(color: Color.fromARGB(100, 214, 9, 211),
     fontSize: 30),

   );
    throw UnimplementedError();
  }
}