import 'dart:math';

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  // String number = "";
  // String value = "";

  TextEditingController luckyController = TextEditingController();
  final globatKey = GlobalKey<FormState>();
  bool isbuttonPress = false;
  // int luckNumber = Random().nextInt(10);
  int luckNumber = 10;
  int counter = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Find your lucky number",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: globatKey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("assets/images/l.jpg"))),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: luckyController,
                    decoration: InputDecoration(
                        hintText: "Enter number",
                        label: Text(
                          "Number",
                          style: TextStyle(color: Colors.red),
                        ),
                        helperText: "Your remaining attempts are ${counter}",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black))),
                    onFieldSubmitted: (Number) {
                      // value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter number';
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    if (globatKey.currentState!.validate()) {
                      setState(() {
                        isbuttonPress = true;
                        luckNumber = luckNumber;
                        counter == 0 ? Text("data") : counter--;
                      });
                    } else {
                      print('enter value');
                    }
                    // print(luckNumber);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Check",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                isbuttonPress == false
                    ? Container()
                    : int.parse(luckyController.text) == luckNumber
                        ? Text(
                            "congrats",
                            style: TextStyle(color: Colors.red),
                          )
                        : Text(
                            '${counter == 0 ? 'You failled . Your number was $luckNumber' : 'Try Again , Your number was ${luckyController.text}'}',
                            style: TextStyle(color: Colors.red),
                          )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
