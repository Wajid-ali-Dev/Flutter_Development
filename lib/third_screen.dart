import 'package:flutter/material.dart';

import 'fourth_screen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Flutter Header".toUpperCase(),
          style: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.italic,
            letterSpacing: 6,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 400,
            height: 400,
            child: Stack(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.grey,
                ),
                Positioned(
                  left: 50,
                  top: 60,
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text("Body of the Flutter Project",
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 6,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                  )),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FourthScreen(),
                    ));
              },
              child: Text(
                "go to counting app".toUpperCase(),
                style: TextStyle(color: Colors.white),
              )),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(30.0),
            child: Center(
              child: Text(
                "Flutter Footer is here",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 6,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}