import 'package:flutter/material.dart';
import 'package:whats_app/Login.dart';
import 'package:whats_app/Umair_Malana.dart';
import 'package:whats_app/circle.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  final String title = 'Umair';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(190, 155, 9, 9),
        elevation: 40,
        title: const Text(
          "Chat Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),

      // body: Row(children: [Column(children: [Text("Camera",style: TextStyle(fontSize: 20,
      // color: Colors.red,),)],)],),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UmairMalana(
                              title: title,
                            )));
              },
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.contacts_rounded,
                        size: 40,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(title, style: TextStyle(fontSize: 20)),
                      Text("I m in software house")
                    ],
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  SizedBox(width: 100, child: Text("Yesterday")),
                ],
              ),
            ),
          ]),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Circle()));
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.contacts_rounded,
                            size: 40,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text("Umair Malana", style: TextStyle(fontSize: 20)),
                          Text("I m in software house")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 100, child: Text("Yesterday")),
                ]),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            icon: Icon(
                              Icons.piano_off_rounded,
                              size: 40,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text("Umair Malana",
                                style: TextStyle(fontSize: 20)),
                            Text("I m in software house")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 100, child: Text("Yesterday")),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
