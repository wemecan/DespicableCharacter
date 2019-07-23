import 'package:flutter/material.dart';
import 'package:despicable_characters/pages/character_listing_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Despicable Me Characters',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0
        )
      ),
      home: CharacterListingScreen(),
    );
  }
}
