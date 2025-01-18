import 'package:flutter/material.dart';
import 'package:music/core/colors.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
          gradient: backgroundColor),
          child: const SafeArea(
              child: Center(
        child: Text('search',
        style: TextStyle(color: Colors.white),
        ),
      ))),
    );
  }
}
