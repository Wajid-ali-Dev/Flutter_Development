import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stateless_widgts/Week2/text_from_field.dart';

class ListTilee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arraynames = [
      "Wajid",
      "Haroon",
      "Ali",
      "Hashim",
      "Haseeb",
      "Awais",
      "Naseeb"
    ];
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'tile view'.toUpperCase(),
          style: TextStyle(
            letterSpacing: 6,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('$index'),
            title: Text(arraynames[index]),
            subtitle: const Text("Player"),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              child: Text(
                "Go".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextFromField(),
                    ));
              },
            ),
          );
        },
        itemCount: arraynames.length,
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2.5,
            height: 50,
            color: Colors.black,
          );
        },
      ),
    );
  }
}
