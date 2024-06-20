import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          iconSize: 30,
          icon: const Icon(Icons.menu),
        ),
        const Text(
          "Home",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        IconButton(
          style: IconButton.styleFrom(
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          iconSize: 30,
          icon: const Icon(Icons.person),
        ),
      ],
    );
  }
}
