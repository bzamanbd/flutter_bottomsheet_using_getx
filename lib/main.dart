import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String _title='BottomSheet using Getx';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
      primarySwatch: Colors.blue
      ),
      home: HomeScreen(title: _title,),
      routes: {
        '/home-screen':(_)=>HomeScreen(title: _title),
      },
    );
  }
}