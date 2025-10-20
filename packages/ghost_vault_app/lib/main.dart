import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:ghost_vault_app/screens/home_screen.dart';
>>>>>>> ff8ed40 (chore: add the initial structure of ghost_vault)

void main() {
  runApp(const GhostVaultApp());
}

class GhostVaultApp extends StatelessWidget {
  const GhostVaultApp({super.key});

  @override
<<<<<<< HEAD
  Widget build(BuildContext build) {
    return MaterialApp();
=======
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {'/home': (context) => HomeScreen()},
    );
>>>>>>> ff8ed40 (chore: add the initial structure of ghost_vault)
  }
}
