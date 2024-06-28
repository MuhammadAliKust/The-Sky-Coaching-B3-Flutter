import 'dart:developer';

import 'package:flutter/material.dart';

class SingleSelectionView extends StatefulWidget {
  const SingleSelectionView({super.key});

  @override
  State<SingleSelectionView> createState() => _SingleSelectionViewState();
}

class _SingleSelectionViewState extends State<SingleSelectionView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Selection Demo"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  selectedIndex = i;
                  setState(() {});
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: selectedIndex == i
                        ? Colors.yellow
                        : Colors.blue.withOpacity(0.4),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "Normal Index $i",
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Selected Index $selectedIndex",
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
