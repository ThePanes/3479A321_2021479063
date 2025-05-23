import 'package:flutter/material.dart';

class ListContent extends StatelessWidget {
  const ListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListContent')),
      body: Center(
        child: ElevatedButton(
          // Within the ListContent widget
        onPressed: () {
          Navigator.pop(context);
        },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}