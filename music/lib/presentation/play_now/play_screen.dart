import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/core/colors.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: backgroundColor),
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                      color: tcolor, borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.keyboard_arrow_left,
                                color: buttonColor,
                                size: 45,
                              ),
                            ),
                            const Text(
                              'Just For You',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.redAccent,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://pics.craiyon.com/2023-09-08/e71317782b54442c92d5cd6a8351d8d2.webp'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'Feel the beats',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const Text(
                        'Aurora',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '2:01',
                              style: textCustom,
                            ),
                            SizedBox(
                              width: 250,
                              height: 20,
                              child: Slider(
                                value: 50,
                                onChanged: (value) {},
                                min: 0,
                                max: 100,
                                activeColor: Colors.white,
                                inactiveColor: Colors.grey,
                              ),
                            ),
                            const Text(
                              '4:01',
                              style: textCustom,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                         Stack(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      Color.fromARGB(169, 158, 158, 158),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.keyboard_arrow_left,
                                      size: 50,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            Stack(
                              children: [
                                const CircleAvatar(
                                  radius: 40,
                                  backgroundColor:
                                      Color.fromARGB(169, 158, 158, 158),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.play_arrow,
                                      size: 60,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            Stack(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      Color.fromARGB(169, 158, 158, 158),
                                ),
                                
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.keyboard_arrow_right,
                                      size: 50,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    color: tcolor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
