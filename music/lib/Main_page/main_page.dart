import 'package:flutter/material.dart';
import 'package:music/Main_page/widget/bottomnavigation.dart';
import 'package:music/core/colors.dart';
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
          gradient: backgroundColor),
        child: SafeArea(
            child: ValueListenableBuilder(
                valueListenable: indexchangeNotifier,
                builder: (context, indext, _) {
                  return page[indext];
                })),
      ),
      bottomNavigationBar: Container(
      decoration: const BoxDecoration(
          gradient: backgroundColor),
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
