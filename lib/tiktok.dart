import 'package:flutter/material.dart';

class Hscreen extends StatefulWidget {
  const Hscreen({super.key});

  @override
  State<Hscreen> createState() => _HscreenState();
}

class _HscreenState extends State<Hscreen> {
  @override
  int currentindex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentindex = value;
          });
        },
        currentIndex: currentindex,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: "Friends"),
          BottomNavigationBarItem(
              icon: Icon(Icons.system_update_tv_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.open_in_browser_rounded), label: "Inbox"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp), label: "Profile")
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Bahawalpur",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Following",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Foryou",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.heart_broken_outlined,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
