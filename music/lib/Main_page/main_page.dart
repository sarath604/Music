import 'package:flutter/material.dart';
import 'package:music/Main_page/widget/bottomnavigation.dart';
import 'package:music/presentation/Home/screen_home.dart';
import 'package:music/presentation/Library/screen_library.dart';
import 'package:music/presentation/Search/screen_search.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final page = const [
    ScreenHome(),
    ScreenSearch(),
    ScreenLibrary(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
       Color.fromARGB(255, 2, 2, 35),
        Color.fromARGB(255, 3, 3, 151)
      ])),
        child: SafeArea(
            child: ValueListenableBuilder(
                valueListenable: indexchangeNotifier,
                builder: (context, indext, _) {
                  return page[indext];
                })),
      ),
      bottomNavigationBar: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 2, 2, 35),
        Color.fromARGB(255, 3, 3, 151)
      ])),
        child: const Padding(
          padding: EdgeInsets.only(
            left: 50,
            right: 50,
            bottom: 20,
            top: 20,
          ),
          child: BottomNavigationWidget(),
        ),
      ),
    );
  }
}
