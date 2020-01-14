import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingScreen(title: 'Settings'),
    );
  }
}

class SettingScreen extends StatefulWidget {
  SettingScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        child: Center(
          child: Text('Settings Screen'),
        ),
      ),
    );
  }
}
