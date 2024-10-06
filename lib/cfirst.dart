import 'package:flutter/material.dart';
import 'package:whats_app/cfabout.dart';

class Cfirst extends StatelessWidget {
  const Cfirst({super.key, required this.spic, required this.samar});
  final String spic;
  final String samar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cfabout()));
          },
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(spic),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                samar,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam_rounded),
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 76, 31, 31),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.emoji_emotions_sharp),
                              color: Colors.green,
                            ),
                            Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Type message",
                                  border: InputBorder.none),
                            )),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.attach_file_rounded),
                              color: Colors.green,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.camera_alt_outlined),
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 25,
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
