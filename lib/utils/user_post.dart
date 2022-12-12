import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  final String photolink;
  UserPosts({required this.name, required this.photolink});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(photolink),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),

                  //text name
                  Container(
                    child: Column(
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("it's me")
                      ],
                    ),
                  ),
                ],
              ),

              //three dotes
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Image.asset('assets/pic.png'),
            ],
          ),
        ),
        //below the post comment etc..
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark_add),
            ],
          ),
        ),
        //comments-----::--

        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Text(
                '130 likes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Text(
                'tropicalearth',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                ' A tiny island in Fijis',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Text(
                'Follow @tropicalearth….',
              ),
              Text(
                'more',
                style: TextStyle(
                    fontStyle: FontStyle.normal, fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Text(
                      ' View a 39 comments',
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Text(
                'thetravellerslist ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'This is really nice post',
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'tropicalearth',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '@thetravellerslist Thanks! Love your',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'profile. Chuck us a follow',
              ),
            ],
          ),
        ),

        //icon with text
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(Icons.abc),
              Text(
                'Add a comment...',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),

        //11hours----
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Text(
                '11 HOURS AGO',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
      // width: 200.0,
      height: 10.0,
      // child: Card(child: Text('Hello World!')),
    ),
      ],
    );
    
  }
}
