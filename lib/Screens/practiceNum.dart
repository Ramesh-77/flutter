import 'package:flutter/material.dart';

class PracticeNumber extends StatefulWidget {
  const PracticeNumber({Key? key}) : super(key: key);

  @override
  PracticeNumberState createState() => PracticeNumberState();
}

class PracticeNumberState extends State<PracticeNumber> {
  String firstNumber = '';
  String secondNumber = '';
  int? sum;

  bool firstNumValidate = false;
  bool secondNumValidate = false;

  TextEditingController firstNumController = TextEditingController();
  TextEditingController secondNumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice Num App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            children: [
              TextField(
                controller: firstNumController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "First Number",
                  hintText: "Enter First Number",
                  border: OutlineInputBorder(),
                  errorText: firstNumValidate ? "field cannot be empty":null,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: secondNumController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Second Number",
                  hintText: "Enter Second Number",
                  border: OutlineInputBorder(),
                  errorText: secondNumValidate ? "Field cannot be empty" : null,
                ),
              ),
              SizedBox(height: 30),
              Text("The sum of $firstNumber and $secondNumber is $sum"),
              
              SizedBox(height: 25),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    firstNumber = firstNumController.text;
                    firstNumber.isEmpty
                        ? firstNumValidate = true
                        : firstNumValidate = false;
                    secondNumber = secondNumController.text;
                    secondNumber.isEmpty
                        ? secondNumValidate = true
                        : secondNumValidate = false;
                    if (firstNumber.isNotEmpty && secondNumber.isNotEmpty) {
                      sum = int.parse(firstNumber) + int.parse(secondNumber);
                    } else {
                      sum = 0;
                    }
                  });
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
