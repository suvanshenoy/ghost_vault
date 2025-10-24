import 'package:flutter/material.dart' show Card;
import 'package:flutter/cupertino.dart';
import 'package:ghost_vault_app/constants/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.only(top: 10),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      color: Themes.color2,
                      child: _HomeScreenCard(
                        cardIcon: CupertinoIcons.eye_slash,
                        cardTitle: 'Passwords',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      color: Themes.color2,
                      child: _HomeScreenCard(
                        cardIcon: CupertinoIcons.doc,
                        cardTitle: 'Files',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      color: Themes.color2,
                      child: _HomeScreenCard(
                        cardIcon: CupertinoIcons.link,
                        cardTitle: 'Urls',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeScreenCard extends StatelessWidget {
  final String cardTitle;
  final IconData cardIcon;
  const _HomeScreenCard({required this.cardIcon, required this.cardTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 4,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(cardIcon, color: Themes.color3),
          ),
          Text(
            cardTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Themes.color3,
            ),
          ),
        ],
      ),
    );
  }
}
