import 'package:flutter/material.dart';
import 'package:music/core/colors.dart';
import 'package:music/core/space.dart';
import 'package:music/presentation/Home/widget/artist_card.dart';
import 'package:music/presentation/Home/widget/music_card.dart';
import 'package:music/presentation/Home/widget/music_libraries_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

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
          child: ListView(children: [
            Container(
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                  color: tcolor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            )),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,right: 40),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Play Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Tracks',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Artists',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            sHeight,
            AlbamList(),
            sHeight,
           ArtistsList(),
            sHeight,
            LibraryList()
          ]),
        ),
      ),
    );
  }
}
