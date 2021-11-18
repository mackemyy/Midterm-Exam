import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kcalapp/foodList.dart';
import 'package:kcalapp/recipeList.dart';

class FavoriteFoodScreen extends StatefulWidget {
  const FavoriteFoodScreen({Key? key}) : super(key: key);

  @override
  _FavoriteFoodScreenState createState() => _FavoriteFoodScreenState();
}

class _FavoriteFoodScreenState extends State<FavoriteFoodScreen> {
  // static List<String> foodname = [
  //   'Cookies',
  //   'Burger',
  //   'Cakes',
  //   'Pizza',
  //   'Hotdog',
  //   'Fries',
  //   'Donuts'
  // ];

  // static List image = [
  //   'image/cookies.png',
  //   'images/burger.png',
  //   'images/cakes.png',
  //   'images/pizza.png',
  //   'images/hotdog.png',
  //   'images/fries.png',
  //   'images/donuts.png',
  // ];

  // static List desc = [
  //   'A cookie is a baked or cooked snack or dessert that is typically small, flat and sweet. It usually contains flour, sugar, egg, and some type of oil, fat, or butter. It may include other ingredients such as raisins, oats, chocolate chips, nuts, etc',
  //   'A hamburger (or burger for short) is a food, typically considered a sandwich, consisting of one or more cooked patties—usually ground meat, typically beef—placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.',
  //   'A cake is a sweet food made by baking a mixture of flour, eggs, sugar, and fat in an oven. Cakes may be large and cut into slices or small and intended for one person only.',
  //   'A pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients which is then baked at a high temperature, traditionally in a wood-fired oven. A small pizza is sometimes called a pizzetta.'
  //       'A hotdog is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself. The sausage used is a wiener (Vienna sausage) or a frankfurter. The names of these sausages also commonly refer to their assembled dish. Some consider it to be a sandwich. Hot dog preparation and condiments vary worldwide.',
  //   'A thin strip of potato, usually cut 3 to 4 inches in length and about 1/4 to 3/8 inches square that are deep fried until they are golden brown and crisp textured on the outside while remaining white and soft on the inside.',
  //   'A doughnut or donut is a type of leavened fried dough. It is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendors. Doughnut is the traditional spelling, while donut is the simplified version; the terms are often used interchangeably.',
  // ];

  // static List alternative = [
  //   'Alternative Names: Biscuit',
  //   'Alternative Names: Hamburger',
  //   'Alternative Names: Cupcake',
  //   'Alternative Names: Pizza Pie',
  //   'Alternative Names: Frankfurter, Wiener, Sausage Banger, Coney',
  //   'Alternative Names: French Fries, Chips, Finger Chips, Frites',
  //   'Alternative Names: Doughnut',
  // ];

  // final List<FoodDataModel> FoodData = List.generate(
  //     foodname.length,
  //     (index) => FoodDataModel('${foodname[index]}', '${image[index]}',
  //         '${desc[index]}', '${alternative[index]}'));

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
                  SizedBox(
                    height: 500,
                    child: SizedBox(
                      child: TabBarView(
                        children: [
                          Container(
                            child: FoodList(),
                          ),
                          Container(
                            child: RecipeList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
