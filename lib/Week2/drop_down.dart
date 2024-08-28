import 'dart:math';

import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> experiencee = ['0-1 year', '1-2 year', '2-3year', '4-5 year'];
  String Experience = 'Experience';

  get value => e;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'drop down'.toUpperCase(),
          style: TextStyle(
            letterSpacing: 6,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "Drop Down",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: DropdownButton(
              value: Experience,
              items: experiencee
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (value)(
                setState(() {
                  experiencee = value.toString() as List<String>;
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
