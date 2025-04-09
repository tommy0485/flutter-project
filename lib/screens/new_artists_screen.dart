import 'package:flutter/material.dart';

class NewArtistsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Artists')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/newArtist1.png',
                  width: 311.0, // Adjust the width as needed
                  height: 311.0, // Adjust the height as needed
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 8.0), // Add spacing between image and text
                Text('New Artist 1'),
              ],
            ),
            SizedBox(width: 16.0), // Add spacing between the two images
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/newArtist2.png',
                  width: 311.0, // Adjust the width as needed
                  height: 311.0, // Adjust the height as needed
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 8.0), // Add spacing between image and text
                Text('New Artist 2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
