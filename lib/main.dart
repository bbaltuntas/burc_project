
import 'package:burc_projesi/burcScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.pink
    ),
    title: "Burc Rehberi",
    debugShowCheckedModeBanner: false,
      // routes:{ "/":(context) => MainScreen(),}
    home: BurcScreen(),
  ));
}