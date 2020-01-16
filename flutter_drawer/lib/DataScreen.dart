import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Data'),
        ),
        body: Container(
          child: Center(
            child: Text(
              'Data Screen',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
