import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchView extends StatefulWidget {
  const SwitchView({super.key});

  @override
  State<SwitchView> createState() => _SwitchViewState();
}

class _SwitchViewState extends State<SwitchView> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch View"),
      ),
      body: Column(
        children: [
          CupertinoSwitch(
              value: isSwitchOn,
              onChanged: (val) {
                isSwitchOn = val;
                setState(() {});
              })
        ],
      ),
    );
  }
}
