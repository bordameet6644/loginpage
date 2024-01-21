import 'package:flutter/material.dart';

class anspage2 extends StatefulWidget {

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<anspage2> {


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("CHACK PLEASE"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Background color
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => anspage2()),
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}
