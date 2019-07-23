import 'package:flutter/material.dart';
import 'package:despicable_characters/widgets/charater_widget.dart';
import 'package:despicable_characters/styleguide.dart';
import 'package:despicable_characters/model/character.dart';

class CharacterListingScreen extends StatefulWidget {
  @override
  _CharacterListingScreenState createState() => _CharacterListingScreenState();
}

class _CharacterListingScreenState extends State<CharacterListingScreen> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1.0,
      initialPage: currentPage,
      keepPage: false
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 8.0),
                child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Despicable Me", style: AppTheme.display1),
                    TextSpan(text: "\n"),
                    TextSpan(text: "Characters", style: AppTheme.display2)
                  ]
                )),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: <Widget>[
                    for (var i = 0; i < characters.length; i++)
                      CharacterWidget(character: characters[i], pageController: this._pageController, currentPage: i)
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
