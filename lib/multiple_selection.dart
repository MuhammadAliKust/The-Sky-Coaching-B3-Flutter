import 'dart:developer';

import 'package:flutter/material.dart';

class MultipleSelectionView extends StatefulWidget {
  const MultipleSelectionView({super.key});

  @override
  State<MultipleSelectionView> createState() => _MultipleSelectionViewState();
}

class _MultipleSelectionViewState extends State<MultipleSelectionView> {
  List<int> indexList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiple Selection Demo"),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
