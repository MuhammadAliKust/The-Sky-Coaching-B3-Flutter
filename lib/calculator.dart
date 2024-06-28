import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int sum = 0;
  int subtract = 0;
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          TextField(
            controller: firstController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: secondController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                int result = 10 + 20;
                setState(() {});
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Success"),
                        content: Text(
                            "You have been logged in succcessfully. $result"),
                      );
                    });
              },
              child: Text("Calculate")),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sum of two numbers is $sum",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "Subtraction of two number is $subtract",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
