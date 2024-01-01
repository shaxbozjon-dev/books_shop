import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../menu.dart';
import '../wiev.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Image(image: AssetImage('img/img.png')),
          SizedBox(
            height: 120,
          ),
          Center(
              child: Text(
            "TODAY A READER.\n  TOMORROW A \n        LEADER",
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
          Center(
              child: Text(
            'words worth books',
            style: TextStyle(fontSize: 18, color: Colors.white60),
          )),
          SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Menu()));
            },
            child: SizedBox(
              height: 70,
              width: 300,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.orangeAccent,
                ),
                child: Center(
                    child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
