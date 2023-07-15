import 'package:flutter/material.dart';
import 'package:mytodo_app/screens/notification_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('settings Screen'),
        ),
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NotificationScreen();
              }));
            },
            icon: Icon(Icons.add)),
      ],
    );
  }
}
