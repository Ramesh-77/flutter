import 'package:flutter/material.dart';

class MyTextFieldState extends StatefulWidget {
  const MyTextFieldState({Key? key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextFieldState> {
  String name = '';
  bool validate = false;

  // step 1
  TextEditingController myController = TextEditingController();

  // step 2
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Retrieve"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              // step 2
              controller: myController,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter your name",
                border: OutlineInputBorder(),
                errorText: validate ? "Field cannot be empty" : null,
                errorStyle: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text(name), //for retrieving values
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              // retrieving the values
              name = myController.text;
              name.isEmpty ? validate = true : validate = false;
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
