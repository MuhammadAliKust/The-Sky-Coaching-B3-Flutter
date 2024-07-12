import 'dart:developer';

import 'package:flutter/material.dart';

class DropDownView extends StatefulWidget {
  DropDownView({super.key});

  @override
  State<DropDownView> createState() => _DropDownViewState();
}

class _DropDownViewState extends State<DropDownView> {
  List<String> itemsList = ['English', 'Urdu', "Punjabi"];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown Demo"),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.withOpacity(0.6)
            ),
            child: DropdownButton(

                items: itemsList.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e.toString()),
                  );

                }).toList(),
                icon: Icon(Icons.add),
                underline: SizedBox(),
                hint: Text("Select Language"),
                value: selectedValue,
                isExpanded: true,
                onChanged: (val) {
                  selectedValue = val;
                  setState(() {});
                }),
          )
        ],
      ),
    );
  }
}
