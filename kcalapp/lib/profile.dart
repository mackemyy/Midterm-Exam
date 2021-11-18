import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: const Icon(FontAwesomeIcons.home),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
              icon: const Icon(FontAwesomeIcons.search),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/upload');
              },
              icon: const Icon(FontAwesomeIcons.camera),
              color: Colors.green[400],
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/favorite-food');
              },
              icon: const Icon(FontAwesomeIcons.solidHeart),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              icon: const Icon(FontAwesomeIcons.user),
              color: Colors.red[400],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Text(
            "PROFILE",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.green[400],
              fontSize: 100.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}