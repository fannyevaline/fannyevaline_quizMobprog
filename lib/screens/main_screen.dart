import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_font_provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeFontProvider = Provider.of<ThemeFontProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Main Screen',
          style: TextStyle(fontFamily: themeFontProvider.currentFont),
        ),
        backgroundColor: themeFontProvider.currentTheme.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, Welcome!',
              style: TextStyle(fontFamily: themeFontProvider.currentFont),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
