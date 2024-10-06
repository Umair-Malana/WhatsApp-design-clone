import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userValue = '';
  String answer = '';

  // void equalPress() {
  //   Parser p = Parser();
  //   Expression expression = p.parse(userValue);
  //   ContextModel contextModel = ContextModel();

  //   double val = expression.evaluate(EvaluationType.REAL, contextModel);

  //   setState(() {
  //     answer = val.toString();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '${userValue == '' ? 0 : userValue}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // Align(
              //     alignment: Alignment.bottomCenter,
              //     child: Text(
              //       "data",
              //       style: TextStyle(color: Colors.white),
              //     )),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  answer,
                  // "${answer == "0" ? 0 : answer}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                // crossAxi
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    // splashColor: Colors.black,

                    onTap: () {
                      setState(() {
                        userValue = '';
                        answer = '';
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.red,
                      child: Text(
                        "Ac",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = '$userValue %';
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.red,
                      child: Text(
                        "%",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue =
                            userValue.substring(0, userValue.length - 1);
                      });
                    },
                    child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.red,
                        child: Text(
                          "Del",
                          style: TextStyle(fontSize: 20),
                        )
                        //  Icon(
                        //   Icons.clear,
                        //   size: 30,
                        //   color: Colors.white,
                        // ),
                        ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue /";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.red,
                      child: Text(
                        "/",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = '$userValue 7';
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("7"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue 8";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("8"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue 9";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("9"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue x";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.red,
                      child: Text(
                        "x",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue 4";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("4"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue 5";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("5"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue 6";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("6"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue-";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.red,
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue 1";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("1"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue 2";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("2"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue 3";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("3"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue +";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.red,
                      child: Text(
                        "+",
                        style: TextStyle(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue 00";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("00"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue 0";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("0"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        userValue = "$userValue .";
                      });
                    },
                    child: CircleAvatar(
                      radius: 35,
                      child: Text("."),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.red,
                      child: Text(
                        "=",
                        style: TextStyle(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
