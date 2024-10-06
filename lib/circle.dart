import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black),
            ),
            SizedBox(
              width: 20,
            ),
            Text("Umair")
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.call_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more)),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit))
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(5))
                .copyWith(bottomLeft: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 10,
                  ),
                  Text("data")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("data"), Icon(Icons.done_all)],
              )
            ],
          ),
        )
      ]),
    );
  }
}
