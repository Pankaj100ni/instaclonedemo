import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  final String photolink;
  BubbleStories({required this.text,required this.photolink});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          Container(
            //   child: Column(
            //   children: <Widget>[
            //     Image.asset('assets/pic.png'),

            //   ],
            // ),
            child: CircleAvatar(
              backgroundImage: AssetImage(photolink),
            ),

            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.grey[400],
              
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
