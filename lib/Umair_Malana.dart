import 'package:flutter/material.dart';

class UmairMalana extends StatelessWidget {
  UmairMalana({super.key, required this.title});
  final String title;

  // TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(title),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(children: [
          TextField(
            // controller: nameController,
            decoration: InputDecoration(
              label: Text('Name'),
              hintText: 'Type meassage',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.orange)),
              enabled: true,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                      height: 10,
                    ),
                    Text(
                      "Hi",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "2:14",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.done_all,
                      color: Colors.blue,
                      size: 20,
                    )
                  ],
                )
              ]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                      height: 10,
                    ),
                    Text(
                      "Hi",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "2:14",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
