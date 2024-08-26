import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/core/colors.dart';

ValueNotifier<int> indexchangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchangeNotifier,
      builder: (context, newvalue, _) {
        return 
           ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), // Adjust the radius to match the Container
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),

            ),
            child: BottomNavigationBar(
              iconSize: 30,
              type: BottomNavigationBarType.fixed,
              backgroundColor: tcolor, // Set background to transparent
              elevation: 0,
              currentIndex: newvalue,
              onTap: (index) {
                indexchangeNotifier.value = index;
              },
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              selectedIconTheme: const IconThemeData(color: Colors.white),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.search,
                    ),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.library_music,
                    ),
                    label: 'Library'),
              ],
            ),
          );
        
      },
    );
  }
}
