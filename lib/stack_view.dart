import 'package:flutter/material.dart';

class StackWidgetDemo extends StatelessWidget {
  const StackWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget Demo"),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/stack.png'),
          const Positioned.fill(
            child: Icon(
              Icons.play_arrow,
              size: 50,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
