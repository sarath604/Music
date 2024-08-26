import 'package:flutter/material.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
      Color.fromARGB(255, 2, 2, 35),
        Color.fromARGB(255, 3, 3, 151)
      ])),
          child: const SafeArea(
              child: Center(
        child: Text('home'),
      ))),
    );
  }
}
