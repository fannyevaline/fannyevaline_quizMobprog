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
              title: Text('Roboto'),
              onTap: () {
                themeFontProvider.setFont('Roboto');
              },
            ),
            ListTile(
              title: Text('Arial'),
              onTap: () {
                themeFontProvider.setFont('Arial');
              },
            ),
            ListTile(
              title: Text('Times New Roman'),
              onTap: () {
                themeFontProvider.setFont('Times New Roman');
              },
            ),
          ],
        ),
      ),
    );
  }
}
