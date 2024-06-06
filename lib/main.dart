import 'package:flutter/material.dart';
import 'package:t_ui_design/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:OrientationBuilder(
          builder: (context, orientation){
            if(orientation==Orientation.portrait){
              return const AspectRatio(aspectRatio: 9/16,
              child:UiWidget());
            }else{
              return const AspectRatio(
                  aspectRatio:16/9,
              child: UiWidget());
            }
      })
    );
  }
}
