import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/core/colors.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({super.key});

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
                padding:  EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: NetworkImage('https://pics.craiyon.com/2023-09-08/e71317782b54442c92d5cd6a8351d8d2.webp'),fit: BoxFit.cover,)
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'sense',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 15),
                child: Row(
                  children: [
                    Text(
                      'Mark Band',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    Icon(
                      Icons.headset,
                      color: Colors.grey,
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 75,
            left: 60,
            child: CircleAvatar(
              backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.play_arrow_solid),
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlbamList extends StatelessWidget {
  AlbamList({super.key});
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
              'The Hottest Tracks of The Week : Only On Pride',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
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
                return const MusicCard();
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
