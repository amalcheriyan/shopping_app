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
        elevation: 30.0,
      ),
      body: Center(
        child: Container(
          // color: Colors.lightBlueAccent,
          height: 150,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(50),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              color: Colors.redAccent,
              border: Border.all(color: Colors.yellow, width: 3),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(8, 8), blurRadius: 10)
              ]),
          child: Text(
            "Loading...",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
