import 'package:flutter/material.dart';
import 'package:music/core/colors.dart';
import 'package:music/core/space.dart';
import 'package:music/presentation/Home/widget/artist_card.dart';
import 'package:music/presentation/Home/widget/music_card.dart';
import 'package:music/presentation/Home/widget/music_libraries_card.dart';
import 'package:music/presentation/play_now/play_screen.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient:backgroundColor),
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
                padding: const EdgeInsets.only(left: 10, right: 10),
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
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return PlayScreen();
                                }),
                              );
                            },
                            child: Text(
                              'Play Now',
                              style: TextStyle(color: Colors.white),
                            ),
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
            Padding(
              padding: const EdgeInsets.all(5),
              child: AlbamList(),
            ),
            sHeight,
            Padding(
              padding: const EdgeInsets.all(5),
              child: ArtistsList(),
            ),
            sHeight,
            Padding(
              padding: const EdgeInsets.all(5),
              child: LibraryList(),
            )
          ]),
        ),
      ),
    );
  }
}
