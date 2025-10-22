import 'package:flutter/material.dart';
import 'package:ghost_vault_app/screens/home_screen.dart';

void main() {
  runApp(const GhostVaultApp());
}

class GhostVaultApp extends StatelessWidget {
  const GhostVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {'/home': (context) => HomeScreen()},
    );
  }
}
