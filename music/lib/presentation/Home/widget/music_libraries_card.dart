import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/core/colors.dart';
import 'package:music/core/space.dart';

class LibraryCard extends StatelessWidget {
  const LibraryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: tcolor,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 150,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                   image: DecorationImage(image: NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/music-band-album-cover-design-template-7fc9bcdd987e17fff1b2de690bdbb2c3_screen.jpg?ts=1599289231'),fit: BoxFit.cover,)
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 80,
            left: 65,
            child: CircleAvatar(
              backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.play_arrow_solid),
                color: Colors.black,
              ),
            ),
          ),
          const Positioned(
            top: 155,
            left: 30,
            child: Column(
              children: [
                Text(
                  'Hip Hop',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),  Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: Colors.grey,
                ),
                 Text(
                  '250',
                  style: TextStyle(color: Colors.grey),
                ),
                sWidth,
                Text(
                  'songs',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}

class LibraryList extends StatelessWidget {
  LibraryList({super.key});
  final gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [Colors.white, Colors.grey],
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return gradient.createShader(bounds);
            },
            child: const Text(
              'Explore Endless Music Libraries',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          LimitedBox(
            maxHeight: 250,
            maxWidth: 150,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, indext) {
                return const LibraryCard();
              },
              separatorBuilder: (context, indext) {
                return const SizedBox(
                  width: 20,
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
