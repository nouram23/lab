import 'package:flutter/material.dart';
import 'package:my_first_app/home.dart';
import 'package:my_first_app/lab3/stack_example.dart';
import 'package:my_first_app/lab3/textfield_example.dart';



void main(){
  runApp(AppMain());
}


class AppMain extends StatelessWidget {
  const AppMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}