import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff192655),
      appBar: AppBar(
          elevation: 0.0,
          title: Center(
            child: Text('Bmi Calculator App'),
          ),
          backgroundColor: Color(0xff192655)),
      body: Column(
        children: [
          MyCard(),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: Center(
              child: Text(
                'Calculator',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.pink),
          ),
          SizedBox(
            height: 120,
          ),
          ResultWidget(),
        ],
      ),
    );
  }
}

ResultWidget() {
  return Column(
    children: [
      Text('Result : 24.61',
          style: TextStyle(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 10,
      ),
      Text('Normal', style: TextStyle(fontSize: 25, color: Colors.green)),
    ],
  );
}

class MyCard extends StatefulWidget {
  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int weight = 63;
  int hight = 180;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffD0D4CA).withOpacity(
                    .2,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Weight',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffD0D4CA).withOpacity(
                          .4,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('$weight km',
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.white38,
                          onPressed: () {
                            setState(() {
                              setState(() {
                                weight--;
                              });
                            });
                          },
                          child: FaIcon(FontAwesomeIcons.minus,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.white38,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          child: FaIcon(FontAwesomeIcons.plus,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffD0D4CA).withOpacity(
                    .2,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hight',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffD0D4CA).withOpacity(
                          .4,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('$hight cm',
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.white38,
                          onPressed: () {
                            setState(() {
                              hight--;
                            });
                          },
                          child: FaIcon(FontAwesomeIcons.minus,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.white38,
                          onPressed: () {
                            setState(() {
                              hight++;
                            });
                          },
                          child: FaIcon(FontAwesomeIcons.plus,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
