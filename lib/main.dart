import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/playlists_screen.dart';
import 'screens/history_screen.dart';
import 'screens/new_artists_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Music Service',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/playlists': (context) => PlaylistsScreen(),
        '/history': (context) => HistoryScreen(),
        '/newartists': (context) => NewArtistsScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
