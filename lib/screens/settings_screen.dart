import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isEmailChecked = false;
  bool isTextChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Notification Settings',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0), // Add spacing below the title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Checkbox(
                      value: isEmailChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isEmailChecked = value ?? false;
                        });
                      },
                    ),
                    Text('Email'),
                  ],
                ),
                SizedBox(width: 40.0), // Add spacing between the checkboxes
                Column(
                  children: [
                    Checkbox(
                      value: isTextChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isTextChecked = value ?? false;
                        });
                      },
                    ),
                    Text('Text'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
