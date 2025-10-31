import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('Notification1'),
          Text('Notification2'),
          Text('Notification3'),
        ],
      ),
    );
  }
}
