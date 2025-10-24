import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ghost_vault_app/constants/themes.dart';

class Navbar extends StatefulWidget {
  final List<Widget> screenWidgets;
  const Navbar({super.key, required this.screenWidgets});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Themes.color1,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.blue,
        selectedIndex: currentPageIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Badge(
              isLabelVisible: false,
              child: Icon(CupertinoIcons.home),
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(
              isLabelVisible: false,
              child: Icon(CupertinoIcons.lock),
            ),
            label: 'Vault',
          ),
          NavigationDestination(
            icon: Badge(
              isLabelVisible: false,
              child: Icon(CupertinoIcons.bell),
            ),
            label: 'Notifications',
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            if (currentPageIndex == 0) widget.screenWidgets.first,
            if (currentPageIndex == 1)
              widget.screenWidgets[widget.screenWidgets.indexOf(
                    widget.screenWidgets.first,
                  ) +
                  1],
            if (currentPageIndex == 2) widget.screenWidgets.last,
          ],
        ),
      ),
    );
  }
}
