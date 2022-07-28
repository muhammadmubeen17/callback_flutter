import 'package:flutter/material.dart';
import 'my_buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String car = "LAMBORGHINI";
  callback(topcar) {
    setState(() {
      car = topcar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Favorite Cars",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                color: Colors.white,
                padding: const EdgeInsets.only(
                    top: 50, left: 40, right: 40, bottom: 50),
                child: Center(
                  child: Text(
                    "What's your favorite car?  $car",
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              MyButtons(car: "BMW", callbackFunction: callback),
              MyButtons(car: "AUDI", callbackFunction: callback),
              MyButtons(car: "FERRARI", callbackFunction: callback),
              MyButtons(car: "HONDA", callbackFunction: callback),
              MyButtons(car: "JAGUAR", callbackFunction: callback),
              MyButtons(car: "BAGATTI", callbackFunction: callback),
            ],
          ),
        ),
      ),
    );
  }
}
