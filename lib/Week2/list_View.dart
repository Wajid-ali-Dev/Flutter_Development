import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListVieww extends StatelessWidget {
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
            'list view'.toUpperCase(),
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
            return Text(
              arraynames[index],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
        ));
  }
}
