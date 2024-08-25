import 'package:flutter/material.dart';

class GridVieww extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> arrColors = [
      Colors.black,
      Colors.blue,
      Colors.blueGrey,
      Colors.amber,
      const Color.fromRGBO(255, 215, 64, 1)
    ];
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            ' grid view'.toUpperCase(),
            style: TextStyle(
              letterSpacing: 6,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              color: arrColors[index],
            );
          },
          itemCount: 5,
        )

        /*Column(children: [
          GridView.count(

            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(
                color: Colors.black,
              ),
              Container(
                color: Colors.blueAccent,
              ),
              Container(
                color: Colors.blueGrey,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.lightGreen,
              ),
              Container(
                color: Colors.cyanAccent,
              ),
            ],
          ),
          Container(
            height: 100,
          ),
          Container(
            height: 200,
            child: GridView.extent(
              maxCrossAxisExtent: 100,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.blueAccent,
                ),
                Container(
                  color: Colors.blueGrey,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.lightGreen,
                ),
                Container(
                  color: Colors.cyanAccent,
                ),
              ],
            ),
          )
        ]
        )*/
        );
  }
}
