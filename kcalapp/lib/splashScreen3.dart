import 'package:flutter/material.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  _SplashScreen3State createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 0, top: 95, right: 0, bottom: 0),
                      child: Text(
                        "kcal",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 0, top: 100, right: 0, bottom: 1),
                      child: Image.asset("images/image4.png"),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0, top: 20, right: 0, bottom: 0),
                          child: Text(
                            "Track Your Health",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 25.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 70, top: 20, right: 70, bottom: 0),
                          child: Text(
                            "With amazing inbuilts tools you can track your health progress.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Image.asset("images/ellipses3.png"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 0, top: 0, right: 0, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/splash-screen2');
                            },
                            child: Text(
                              "Prev",
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(0, 114, 54, 1),
                              primary: Colors.white,
                              minimumSize: Size(90.0, 50.0),
                            ),
                          ),
                          SizedBox(width: 50.0),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/favorite-food');
                            },
                            child: Text(
                              "Next",
                              style: TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(0, 114, 54, 1),
                              primary: Colors.white,
                              minimumSize: Size(90.0, 50.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/favorite-food');
                        },
                        child: Text(
                          "Get Started",
                          style: TextStyle(fontSize: 17.0),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(color: Colors.white, width: 2.0),
                          minimumSize: Size(225.0, 50.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 120, top: 20, right: 0, bottom: 0),
                      child: Row(
                        children: [
                          Text(
                            "Already Have an Account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "Log in",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 114, 54, 1),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
