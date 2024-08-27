import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(TrueFalse());
}

class TrueFalse extends StatelessWidget {
  TrueFalse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<int> san = [9, 45, 32, 36, 32];
  List<String> attar = [];
  List<String> ysymdar = [];
  List<Icon> icons = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Tапшырма 7",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Кыргызстанда 7 область бар",
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.red,
                  fontFamily: "Jersey15Charted"),
            ),
          ),
          Text(
            '${attar}' ?? '${ysymdar}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Container(
            width: 335.0,
            height: 70.0,
            child: Material(
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  log('${attar.length}');
                  attar.add('Sanjar');
                  icons.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 50,
                    ),
                  );
                  setState(() {});
                },
                child: Center(
                  child: Text(
                    "Tyyра",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 335.0,
            height: 70.0,
            child: Material(
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  //  attar = [];
                  //  icons = [];
                  icons.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 50,
                    ),
                  );
                  setState(() {});
                },
                child: Center(
                  child: Text(
                    "Tyyра эмес",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              color: Colors.red,
            ),
          ),
          Row(
            children: icons,
          ),
        ],
      ),
    );
  }
}
