import 'package:flutter/material.dart';

class anspage1 extends StatelessWidget {
  anspage1({required this.name, required this.password});

  String name;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Details"),
      ),
      body: Center(
        child: Container(
          height: 600,
          width: 1500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTby7Kj7nRK-gmtloWTyHpZKVaEPYhoN3i3Qw&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "YOUR GMAIL IS    : $name",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "YOUR PASSWORD IS  : $password",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
