import 'package:flutter/material.dart';
import 'package:login_project/onboarding_view.dart';

class StackWidgetDemo extends StatefulWidget {
  StackWidgetDemo({super.key});

  @override
  State<StackWidgetDemo> createState() => _StackWidgetDemoState();
}

class _StackWidgetDemoState extends State<StackWidgetDemo> {
  List<Widget> bodyWidgets = [
    OnBoardingView(),
    Center(
      child: Text("Add"),
    ),
    Center(
      child: Text("More"),
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget Demo"),
      ),
      body: bodyWidgets.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          selectedIndex = val;
          setState(() {});
        },
        selectedLabelStyle: TextStyle(
          fontSize: 20
        ),
        unselectedFontSize: 18,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
    );
  }
}
