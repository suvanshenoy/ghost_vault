import 'package:flutter/material.dart';
import 'package:ghost_vault_app/screens/home_screen.dart';
import 'package:ghost_vault_app/widgets/navbar.dart';
import 'package:ghost_vault_app/screens/vault_screen.dart';
import 'package:ghost_vault_app/screens/notification_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navbar(
        screenWidgets: [HomeScreen(), VaultScreen(), NotificationScreen()],
      ),
    );
  }
}
