import 'package:flutter/material.dart';
import './widgets/button.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Demo App", home: MyWidget());
  }
}
