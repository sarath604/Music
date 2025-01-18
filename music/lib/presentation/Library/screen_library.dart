import 'package:flutter/material.dart';
import 'package:music/core/colors.dart';

class ScreenLibrary extends StatelessWidget {
  const ScreenLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      decoration: const BoxDecoration(
          gradient: backgroundColor),
          child: const SafeArea(
              child: Center(
        child: Text('library'
        ,style: TextStyle(color: Colors.white),),
      ))),
    );
  }
}
