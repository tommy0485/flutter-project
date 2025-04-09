import 'package:flutter/material.dart';

class PlaylistsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Playlists')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/playlist1.png',
                  width: 311.0, // Adjust the width as needed
                  height: 311.0, // Adjust the height as needed
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 8.0), // Add spacing between image and text
                Text('Playlist 1'),
              ],
            ),
            SizedBox(width: 16.0), // Add spacing between the two images
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/playlist2.png',
                  width: 311.0, // Adjust the width as needed
                  height: 311.0, // Adjust the height as needed
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 8.0), // Add spacing between image and text
                Text('Playlist 2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
