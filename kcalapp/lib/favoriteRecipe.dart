import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoriteRecipeScreen extends StatefulWidget {
  const FavoriteRecipeScreen({Key? key}) : super(key: key);

  @override
  _FavoriteRecipeScreenState createState() => _FavoriteRecipeScreenState();
}

class _FavoriteRecipeScreenState extends State<FavoriteRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
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
                      Navigator.pushNamed(context, '/favorite-recipe');
                    },
                    icon: const Icon(FontAwesomeIcons.solidHeart),
                    color: Colors.red[400],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    icon: const Icon(FontAwesomeIcons.user),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 0, top: 20, right: 0, bottom: 50),
                      child: Text(
                        "Favorites",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 249, 243, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TabBar(
                        unselectedLabelColor: Color.fromRGBO(116, 198, 157, 1),
                        indicator: BoxDecoration(
                            color: Color.fromRGBO(116, 198, 157, 1),
                            borderRadius: BorderRadius.circular(8)),
                        tabs: [
                          Tab(text: 'Foods'),
                          Tab(text: 'Recipes'),
                        ]),
                  ),
                ],
              ),
            )));
  }
}
