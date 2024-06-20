import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        //text
        title: Text("Flutter App"),
        centerTitle: true,

        //bg color
        backgroundColor: Colors.blueAccent,

        //leading
        leading: Icon(Icons.home),

        //actions
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],

        //shape
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),

        //elevation
        elevation: 20.0,
      ),
      body: Center(
        child: Text(
          "Flutter App",
          style: TextStyle(
              fontSize: 40,
              color: Color.fromARGB(255, 10, 78, 12),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              wordSpacing: 10,
              backgroundColor: Colors.lightBlueAccent,
              shadows: const [
                Shadow(
                  color: Color.fromARGB(255, 131, 200, 52),
                  offset: Offset(5, 5),
                )
              ]),
        ),
      ),
    );
  }
}
