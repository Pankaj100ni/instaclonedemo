import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instaclone/utils/bubblestories.dart';
import 'package:instaclone/utils/user_post.dart';
import 'package:instaclone/utils/user_post.dart';

class UserHome extends StatelessWidget {
  final List People = [
    'Your Story',
    'tropicalearth',
    'condenasttr...',
    'beautifuldest...',
    'bestintravel'
  ];
  final List Peoplephoto = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/5.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.photo_camera),
                ),
                Text(
                  'Instagram',
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.tv_sharp),
                ),
                Icon(Icons.message),
              ],
            )
          ],
        ),
      ),
      
      body: Column(children: [
        Container(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: People.length,
              itemBuilder: (context, index) {
                return BubbleStories(
                  text: People[index],
                  photolink: Peoplephoto[index],
                );
              }
              // scrollDirection: Axis.horizontal,
              // children: [
              //   BubbleStories(
              //     text: 'Your Story',
              //   ),
              //   BubbleStories(
              //     text: 'tropicalearth',
              //   ),
              //   BubbleStories(
              //     text: 'cond',
              //   ),
              //   BubbleStories(
              //     text: 'beautiful',
              //   ),
              //   BubbleStories(text: 'extra'),
              //   BubbleStories(
              //     text: 'beautiful',
              //   ),
              //   BubbleStories(text: 'Pankaj'),
              // ],
              ),
        ),
        //post
        Expanded(
          child: ListView.builder(
              itemCount: People.length,
              itemBuilder: (context, index) {
                return UserPosts(
                  name: People[index],
                  photolink: Peoplephoto[index],
                );
              }),
        )
        // UserPosts(
        //   name: "tropical",
        // ),
      ]),
    );
  }
}
