import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../themes/themes.dart';
import '../providers/theme_font_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeFontProvider = Provider.of<ThemeFontProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: themeFontProvider.currentTheme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Choose a Theme',
              style: TextStyle(fontFamily: themeFontProvider.currentFont),
            ),
            ListTile(
              title: Text('Light Theme'),
              onTap: () {
                themeFontProvider.setTheme(lightTheme);
              },
            ),
            ListTile(
              title: Text('Dark Theme'),
              onTap: () {
                themeFontProvider.setTheme(darkTheme);
              },
            ),
            ListTile(
              title: Text('Pastel Theme'),
              onTap: () {
                themeFontProvider.setTheme(pastelTheme);
              },
            ),
            SizedBox(height: 20),
            Text(
              'Choose a Font',
              style: TextStyle(fontFamily: themeFontProvider.currentFont),
            ),
            ListTile(
              title: Text('Courier'),
              onTap: () {
                themeFontProvider.setFont('Courier');
              },
            ),
            ListTile(
              title: Text('Lobster'),
              onTap: () {
                themeFontProvider.setFont('Lobster');
              },
            ),
            ListTile(
              title: Text('Georgia'),
              onTap: () {
                themeFontProvider.setFont('Georgia');
              },
            ),
          ],
        ),
      ),
    );
  }
}
