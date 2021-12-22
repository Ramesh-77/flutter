import 'package:flutter/material.dart';

class ClassWorkState extends StatefulWidget {
  const ClassWorkState({Key? key}) : super(key: key);

  @override
  _ClassWorkStateState createState() => _ClassWorkStateState();
}

class _ClassWorkStateState extends State<ClassWorkState> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  String firstName = '';
  String lastName = '';
  bool firstNameValidate = false;
  bool lastNameValidate = false;

  void dispose() {
    firstNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Classwork"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            children: [
              TextField(
                controller: firstNameController,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: "First Name",
                  hintText: "Enter your firstname",
                  border: OutlineInputBorder(),
                  errorText: firstNameValidate ? "Field cannot be empty" : null,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: lastNameController,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: "Last Name",
                  hintText: "Enter your lastname",
                  border: OutlineInputBorder(),
                  errorText: lastNameValidate ? "Field cannot be empty" : null,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(firstName),
              Text(lastName),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              firstName = firstNameController.text;
              lastName = lastNameController.text;
              firstName.isEmpty
                  ? firstNameValidate = true
                  : firstNameValidate = false;
              lastName.isEmpty
                  ? lastNameValidate = true
                  : lastNameValidate = false;
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
