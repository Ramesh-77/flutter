import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  String result = '';
  // making controller
  final firstController = TextEditingController();
  final secondController = TextEditingController();
// for form key
  final _formkey = GlobalKey<FormState>();

  // String myValidator(value) {}
  // @overridegit 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: myAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          key: _formkey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Adding two numbers"),
                  SizedBox(height: 30),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "field is empty";
                      } else {
                        return null;
                      }
                    },
                    controller: firstController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "First Num: ",
                      hintText: "0",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "field is empty";
                      }
                      if (value.length <= 1) {
                        return "invalid number";
                      }
                      return null;
                    },
                    controller: secondController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Second Num: ",
                      hintText: "0",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          result = ((int.parse(firstController.text)) +
                                  (int.parse(secondController.text)))
                              .toString();
                        });
                      }
                    },
                    child: Text("Sum"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 150,
                          height: 80,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              'Result',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 150,
                          height: 80,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              '',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

AppBar myAppBar(BuildContext context) {
  return AppBar(
    title: Text('Form Example'),
  );
}
