import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Exam App",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Greeting App"),
          // backgroundColor: Colors.pink[200],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello World!",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Welcome to Flutter!"),
              ),
              Image.asset(
                "assets/images/flutter.png",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () {
                      print("vai btn hit korche");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      )
                    ),
                    child: Text("Press Me"),

                    ),
              )
            ],
          ),
        ));
  }
}
