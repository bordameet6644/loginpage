import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CityScreen(),
    );
  }
}

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String name = "MEET6644@GMAIL.COM";
  String password = "MEET6644";
  String? userpassword;
  String? username;

  void _ShowDialog() {
    setState(() {
      if (username == name && userpassword == password) {

        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => anspage1(
                    name: name,
                    password: password,
                  )),
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("Message"),
              content: new Text("Wrong Password"),
              actions: <Widget>[
                new TextButton(
                  child: new Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 600,
          width: 1500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY4eM1_qnVsWt7HFn-3mBDijDSVAbU-SGo0w&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    width: 4,
                  )),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR87ljg6H95kZwtvlWJCYOcT5UWOQ7DM2SFIQ&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 100,
              ),
              Container(
                height: 100,
                width: 1000,
                // color: Colors.greenAccent,
                child: Column(
                  children: [
                    Container(
                      width: 1000,
                      child: Text("Gmail:"),
                    ),
                    TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        icon: Icon(
                          Icons.mail_lock,
                          color: Colors.brown,
                        ),
                        hintText: 'Enter Your Gmail',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) {
                        username = value as String;
                      },
                    ),
                  ],
                ),
              ),
              Container(
                  height: 200,
                  width: 1000,
                  // color: Colors.greenAccent,
                  child: Column(
                    children: [
                      Container(
                        width: 1000,
                        child: Text("Password:"),
                      ),
                      TextField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          icon: Icon(
                            Icons.lock,
                            color: Colors.brown,
                          ),
                          hintText: 'Enter Your Password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: (value) {
                          userpassword = value as String;
                        },
                      ),
                    ],
                  )),
              ElevatedButton(
                child: Text("LOGIN"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Background color
                ),
                onPressed: () {
                  _ShowDialog();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// Scaffold(
//   body: Center(
//     child: Column(
//       children: [
//         Container(
//           color: Colors.greenAccent,
//           height: 100,
//           width: 400,
//           child: TextField(
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//         ),
//
//         Container(
//           height: 200,
//           width: 1000,
//           color: Colors.greenAccent,
//           child: TextField(
//             style: TextStyle(
//               color: Colors.black,
//             ),
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: Colors.white,
//           icon: Icon(
//             Icons.location_city,
//             color: Colors.white,
//           ),
//           hintText: 'Enter Your Name',
//           hintStyle: TextStyle(
//             color: Colors.grey,
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(10.0),
//             ),
//             borderSide: BorderSide.none,
//           ),
//         ),
//
//           onChanged: (value) {
//           username = value as String;
//         },
//           ),
//         ),
//         Container(
//           height: 200,
//           width: 1000,
//           color: Colors.greenAccent,
//           child: TextField(
//             style: TextStyle(
//               color: Colors.black,
//             ),
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: Colors.white,
//           icon: Icon(
//             Icons.location_city,
//             color: Colors.white,
//           ),
//           hintText: 'Enter Your Password',
//           hintStyle: TextStyle(
//             color: Colors.grey,
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(10.0),
//             ),
//             borderSide: BorderSide.none,
//           ),
//         ),
//         onChanged: (value) {
//           password = value as int;
//         },
//               ),
//             ),
//       ],
//     ),
//   ),
// );
//   }
// }
