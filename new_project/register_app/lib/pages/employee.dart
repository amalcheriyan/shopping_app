import 'package:flutter/material.dart';
import 'details.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController nationcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 173, 249, 179),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Registration",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Form",
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namecontroller,
                decoration: const InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    label: Text("Name")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: agecontroller,
                decoration: const InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    label: Text("Age")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: phonecontroller,
                maxLength: 10,
                decoration: const InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    label: Text("Phone")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nationcontroller,
                decoration: const InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    label: Text("Nation")),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        name: namecontroller.text,
                        age: agecontroller.text,
                        phone: phonecontroller.text,
                        nation: nationcontroller.text,
                      ),
                    ),
                  );
                },
                style: ButtonStyle(
                  minimumSize:
                      WidgetStateProperty.all(const Size(double.infinity, 50)),
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
