import 'package:flutter/material.dart';

class InfiniteListView extends StatelessWidget {
  InfiniteListView({super.key});

  List<String> data = ["First", "Second"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
      ),
      body: ListView.builder(
          // itemCount: data.length,
          itemBuilder: (context, i) {
            // final item = data[i % data.length];
            return  Column(
              children: [

                ListTile(
                  leading: Text(i % 2 == 0?data[0]:data[1]),
                ),
                Divider()
              ],
            );
          }),
    );
  }
}
