import 'package:flutter/material.dart';
import 'package:stateless_widgts/third_screen.dart';
import 'first_screen.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'Navigator.Push'.toUpperCase(),
          style: TextStyle(
            letterSpacing: 6,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Navigator Pop screen',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstScreen(),
                      ));
                },
                child: Text(
                  "Pop".toUpperCase(),
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdScreen(),
                      ));
                },
                child: Text(
                  "go to header footer and body of the flutter".toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}