import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String car;
  final Function callbackFunction;
  const MyButtons({required this.car, required this.callbackFunction});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        callbackFunction(car);
      },
      child: Container(
        width: double.maxFinite,
        height: 70,
        margin: const EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            car,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
