import 'package:flutter/material.dart';

class MYButtonSState extends StatefulWidget {
  const MYButtonSState({Key? key}) : super(key: key);

  @override
  _MYButtonSStateState createState() => _MYButtonSStateState();
}

class _MYButtonSStateState extends State<MYButtonSState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  side: BorderSide(color: Colors.blue, width: 5),
                  minimumSize: Size(150, 75),
                  padding: EdgeInsets.all(25),
                  textStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  primary: Colors.white,
                  backgroundColor: Colors.red,
                  elevation: 20,
                  shadowColor: Colors.yellow),
              onPressed: () {
                print("u have single click on button");
              },
              child: Text("Text Button"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.wifi),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.people),
              label: Text(
                "Clicked",
                textScaleFactor: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// TextButton: at a place such as App Bar to close the screen, inside the dialog for closing it, not inside interface
// ElevatedButton: inside interface, direct action fromt he user sucha s confirming an order or booking a ticket
// OutlinedButton
// TextButtonTheme, ElevatedButtonTheme, OutlinedButtonTheme
// ButtonStyle: for customizing buttons