import 'package:flutter/material.dart';

class DetailPageFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Details Page for Food here',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green[400],
            fontSize: 60.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
