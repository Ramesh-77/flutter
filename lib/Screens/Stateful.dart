import 'package:flutter/material.dart';

class StflExample extends StatefulWidget {
  const StflExample({Key? key}) : super(key: key);

  @override
  _StflExampleState createState() => _StflExampleState();
}

class _StflExampleState extends State<StflExample> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                // onChanged: (value) {
                //   setState(() {
                //     name = value;
                //   });
                //   print('entered name is $name');
                // },
                onSubmitted: (value) {
                  setState(
                    () {
                      name = value;
                    },
                  );
                  print('entered name is $name');
                },
                // maxLength: 4, //for writing maximum length of characters
                // maxLines: null, // use 2 also for multiple lines writing
                // textInputAction: TextInputAction.continueAction, //for done tick wala
                // keyboardType: TextInputType.phone, //emailaddress

                // autocorrect: true, //for correcting words
                // obscuringCharacter: '*', //for password ko lagi
                // obscureText: true, //for password hiding
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  // hintStyle: for hintText ko lagi like color
                  // labelStyle: for label ko lagi like color
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(),
                ),
              ),
              Text(
                'Your best friend is $name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
