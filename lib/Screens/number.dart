import 'package:flutter/material.dart';

class NumberState extends StatefulWidget {
  const NumberState({Key? key}) : super(key: key);

  @override
  _NumberStateState createState() => _NumberStateState();
}

class _NumberStateState extends State<NumberState> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  bool firstNumberValidate = false;
  bool secondNumberValidate = false;
  String firstNum = '';
  String secondNum = '';
  int sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: firstNumberController,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: "First Number",
                  hintText: "Enter First NUM",
                  border: OutlineInputBorder(),
                  errorText:
                      firstNumberValidate ? "Field should not be empty" : null,
                ),
              ),
              SizedBox(height: 25),
              TextField(
                keyboardType: TextInputType.number,
                controller: secondNumberController,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: "Second Number",
                  hintText: "Enter Second NUM",
                  border: OutlineInputBorder(),
                  errorText:
                      secondNumberValidate ? "Field should not be empty" : null,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text("$sum"),
              SizedBox(height: 25),
              ElevatedButton.icon(
                onPressed: () {
                  setState(
                    () {
                      firstNum = firstNumberController.text;
                      firstNum.isEmpty
                          ? firstNumberValidate = true
                          : firstNumberValidate = false;
                      secondNum = secondNumberController.text;
                      secondNum.isEmpty
                          ? secondNumberValidate = true
                          : secondNumberValidate = false;

                      if (firstNum.isNotEmpty && secondNum.isNotEmpty) {
                        sum = int.parse(firstNum) + int.parse(secondNum);
                      } else {
                        sum = 0;
                      }
                    },
                  );
                },
                icon: Icon(Icons.add),
                label: Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
