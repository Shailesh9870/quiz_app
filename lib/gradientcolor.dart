import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class GradientColor extends StatelessWidget{
 const GradientColor( {super.key,required this.colors});

 final List<Color> colors;
 @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
          begin: Alignment.topLeft,
            end: Alignment.bottomRight,
        )
      ),
      child: Center(
          //child: Text(StyledText('sagar'), style: TextStyle(fontSize: 50),),
        child: StyledText("Hi Shailesh"),
      ),
    );
    throw UnimplementedError();
  }
}