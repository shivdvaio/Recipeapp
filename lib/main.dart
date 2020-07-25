import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/constants.dart';
import 'package:recipeapp/home/homescreen.dart';
import 'package:recipeapp/sizeconfig.dart';
import 'models/navitem.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Navitems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Colors.white,
            appBarTheme: AppBarTheme(color: Colors.white,elevation: 0)),
        home: Homescreen()),
    );
  }
}