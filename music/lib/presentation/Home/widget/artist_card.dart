import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/core/colors.dart';
import 'package:music/core/space.dart';

class ArtistsCard extends StatelessWidget {
  const ArtistsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 170,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: tcolor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sHeight,
            const CircleAvatar(
              backgroundImage: NetworkImage('https://www.rollingstone.com/wp-content/uploads/2019/08/Billie.jpg'),
              radius: 60,
            ),
            sHeight,
            const Text(
              'Luna Blaze',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35, top: 10),
              child: Row(
                children: [
                  Text(
                    '25',
                    style: TextStyle(color: Colors.grey),
                  ),
                  sWidth,
                  Text(
                    'songs',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Explore',
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ));
  }
}

class ArtistsList extends StatelessWidget {
  ArtistsList({super.key});

  final gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [Colors.white, Color.fromARGB(255, 132, 129, 129)],
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
              'Trending Artists',
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
                return const ArtistsCard();
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
