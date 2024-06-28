import 'dart:developer';

import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    log("Render UI");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Text(
          counter.toString(),
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          setState(() {});
          log(counter.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
