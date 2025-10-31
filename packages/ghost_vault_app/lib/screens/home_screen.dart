import 'package:flutter/material.dart' show Card, Colors;
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
            padding: EdgeInsets.zero,
            width: double.infinity,
            color: Colors.transparent,
            height: 100,
            child: Align(
              child: Text(
                'GhostVault',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Themes.color2,
                ),
              ),
            ),
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
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Themes.color2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      color: Colors.transparent,
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
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Themes.color2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      color: Colors.transparent,
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
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Themes.color2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      color: Colors.transparent,
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
      width: double.infinity,
      height: 70,

      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(cardIcon, color: Themes.color2),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              cardTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Themes.color2,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
