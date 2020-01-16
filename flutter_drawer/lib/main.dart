import 'package:flutter/material.dart';
import 'package:flutter_drawer/profile_screen.dart';
import 'package:flutter_drawer/setting_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Drawer Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('NAME:' + 'NAGARJUNA'),
              accountEmail: Text('EMAIL:' + 'nagarjuna.polam@gmail.com'),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.brown, child: Text("NA")),
              otherAccountsPictures: <Widget>[
                Container(
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.brown,
                      child: Text('SA'),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text('Profile Screen'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}