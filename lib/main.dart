import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/main_screen.dart';
import 'screens/settings_screen.dart';
import 'providers/theme_font_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeFontProvider(),
      child: Consumer<ThemeFontProvider>(
        builder: (context, themeFontProvider, child) {
          return MaterialApp(
            title: 'Multi-Theme & Multi-Font App',
            theme: themeFontProvider.currentTheme,
            home: MainScreen(),
            routes: {
              '/settings': (context) => SettingsScreen(),
            },
          );
        },
      ),
    );
  }
}
