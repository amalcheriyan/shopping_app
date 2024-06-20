import 'dart:developer';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    log("clicked");
                  },
                  child: Text("TextButton"))
            ],
          ),
        ));
  }
}
