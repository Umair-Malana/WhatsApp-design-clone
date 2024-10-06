import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chats extends StatelessWidget {
  Chats({
    super.key,
    
  });
  
  var message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(""),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(""),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.call_sharp)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 49,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 174, 203, 175),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          bottomLeft: const Radius.circular(25)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hi",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "2:04 pm",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),

                              Icon(
                                Icons.done_all,
                                size: 14,
                                color: Colors.blue,
                              )

                              // Text("data")
                              // IconButton(
                              //     onPressed: () {},
                              //     icon: Icon(
                              //       Icons.send,
                              //       size: 10,
                              //     ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 49,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 230, 227, 221),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(25)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text("yes")],
                        ),
                        Row(
                          children: [
                            Text("2:05pm",
                                style: TextStyle(
                                  fontSize: 10,
                                ))
                          ],
                        )
                      ]),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.emoji_emotions,
                                size: 40,
                              ),
                              Expanded(
                                  child: TextField(
                                controller: message,
                                decoration: InputDecoration(
                                    hintText: 'Type message',
                                    border: InputBorder.none),
                              )),
                              Icon(Icons.attach_file_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.camera_alt)
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green,
                        child: Icon(Icons.mic),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
