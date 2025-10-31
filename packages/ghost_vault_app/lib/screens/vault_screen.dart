import 'package:flutter/material.dart';

class VaultScreen extends StatelessWidget {
  const VaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [Text('Passwords'), Text('Files'), Text('Urls')]),
    );
  }
}
