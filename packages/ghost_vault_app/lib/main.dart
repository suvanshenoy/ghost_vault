import 'package:flutter/material.dart';
import 'package:ghost_vault_app/screens/main_screen.dart';
import 'package:ghost_vault_app/constants/themes.dart';

void main() {
  runApp(const GhostVaultApp());
}

class GhostVaultApp extends StatelessWidget {
  const GhostVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GhostVault',
      theme: ThemeData(scaffoldBackgroundColor: Themes.color1),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => MainScreen()},
    );
  }
}
