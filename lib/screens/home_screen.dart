import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(350.0), // Increased height of the AppBar
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/logo.png',
              width: 48.0, // Original width
              height: 48.0, // Original height
              fit: BoxFit.contain,
            ),
          ),
          title: Text('Welcome to Your Music Service'),
          centerTitle: true, // Ensures the title is centered
          flexibleSpace: Column(
            children: [
              SizedBox(height: 80.0), // Increased spacing below the title
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Image.asset(
                    'assets/images/recommended-artist.png',
                    width: 400.0, // Doubled width
                    height: 400.0, // Doubled height
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                // Handle logout
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/playlists'),
              child: Text('Playlists'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/history'),
              child: Text('History'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/newartists'),
              child: Text('Discover Something New'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/settings'),
              child: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
