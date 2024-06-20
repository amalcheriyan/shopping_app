import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String name;
  final String age;
  final String phone;
  final String nation;

  const DetailsPage({
    super.key,
    required this.name,
    required this.age,
    required this.phone,
    required this.nation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 173, 249, 179),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Employee",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Details",
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 243, 89),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Details"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: const Text("Name"),
                            subtitle: Text(name),
                          ),
                          ListTile(
                            title: const Text("Age"),
                            subtitle: Text(age),
                          ),
                          ListTile(
                            title: const Text("Phone"),
                            subtitle: Text(phone),
                          ),
                          ListTile(
                            title: const Text("Nation"),
                            subtitle: Text(nation),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Close"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Card(
                child: ListTile(
                  title: const Text("Name"),
                  subtitle: Text(name),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
