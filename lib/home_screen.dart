import 'package:flutter/material.dart';
import 'package:whats_app/Login.dart';
import 'package:whats_app/chat_screen1.dart';
import 'package:whats_app/screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Whats App',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen()));
            },
            icon: Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            icon: Icon(Icons.search_rounded),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
              icon: Icon(Icons.more_horiz_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            "Images",
            style: TextStyle(fontSize: 30.9),
          ),
          SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage('assets/images/1.JPG'),
            width: 200,
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            height: 300,
            decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            child: Image(
              // alignment: alig,
              image: AssetImage('assets/images/2.JPG'),

              filterQuality: FilterQuality.high,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(
              'assets/images/2.JPG',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset(
                'assets/images/2.JPG',
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Image(
              image: AssetImage('assets/images/2.JPG'),
              // width: 200,
              // height: 200,
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Image(
              image: NetworkImage(
                  'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&w=600'),
              // width: 200,
              // height: 200,
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill,
            ),
          ),
        ]),
      ),
    );
  }
}
