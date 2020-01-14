import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: ProfileScreen(title: 'Profile'),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  final String title;

  ProfileScreen({Key key, this.title}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
