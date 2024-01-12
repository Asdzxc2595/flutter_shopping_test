import 'package:flutter/material.dart';
import 'package:test2/page/homepage.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'อีย่าาาาา',theme: ThemeData(primaryColor: Colors.amber),
      home: homepages(),
    );
  }
}