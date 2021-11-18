import 'package:flutter/material.dart';
import 'package:kcalapp/camera.dart';
import 'package:kcalapp/detailsPage.dart';
import 'package:kcalapp/favoriteRecipe.dart';
import 'package:kcalapp/home.dart';
import 'package:kcalapp/profile.dart';
import 'package:kcalapp/search.dart';
import 'package:kcalapp/splashScreen1.dart';
import 'package:kcalapp/splashScreen2.dart';
import 'package:kcalapp/splashScreen3.dart';
import 'package:kcalapp/favoriteFood.dart';

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutrition Application',
      theme: ThemeData(
        fontFamily: "Montserrat",
        scaffoldBackgroundColor: const Color.fromRGBO(116, 198, 157, 1),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/splash-screen1': (context) => const SplashScreen1(),
        '/splash-screen2': (context) => const SplashScreen2(),
        '/splash-screen3': (context) => const SplashScreen3(),
        '/home': (context) => const HomeScreen(),
        '/search': (context) => const SearchScreen(),
        '/upload': (context) => const CameraScreen(),
        '/favorite-recipe': (context) => const FavoriteRecipeScreen(),
        '/favorite-food': (context) => const FavoriteFoodScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/detailsPage': (context) => DetailPageFood(),
      },
      home: Scaffold(
        body: SafeArea(
          child: SplashScreen(),
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetosplash1();
  }

  _navigatetosplash1() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const SplashScreen1();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/image1.png"),
            Text("kcal",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  letterSpacing: 2.0,
                )),
          ],
        ),
      ),
    );
  }
}
