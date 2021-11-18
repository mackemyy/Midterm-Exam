import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  @override
  FoodListState createState() => FoodListState();
}

class FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        child: Image.asset(
                          "images/cookies.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Cookie",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detailsPage');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset(
                          "images/burger.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Burger",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detailsPage');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  width: 50,
                  height: 50,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        child: Image.asset(
                          "images/cakes.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Cakes",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detailsPage');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset(
                          "images/pizza.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detailsPage');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  width: 50,
                  height: 50,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        child: Image.asset(
                          "images/hotdog.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Hotdog",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detailsPage');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset(
                          "images/fries.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Text(
                          "Fries",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detailsPage');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 50,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        child: Image.asset(
                          "images/donuts.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Donuts",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detailsPage');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
