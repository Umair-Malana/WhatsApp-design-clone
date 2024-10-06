

import 'package:flutter/material.dart';

class Facebook extends StatefulWidget {
  const Facebook({super.key});

  @override
  State<Facebook> createState() => _NavBarState();
}

class _NavBarState extends State<Facebook> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Facebook",
          style: TextStyle(
              color: Colors.blue.shade900, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
            controller: tabController,
            unselectedLabelColor: Colors.black87,
            labelColor: Colors.blue.shade900,
            // padding: EdgeInsets.only(bottom: 5),
            tabs: [
              Icon(
                Icons.home_rounded,
                size: 35,
              ),
              Icon(
                Icons.ondemand_video_sharp,
                size: 35,
              ),
              Icon(
                Icons.home_filled,
                size: 35,
              ),
              Icon(
                Icons.analytics_rounded,
                size: 35,
              ),
              Icon(
                Icons.notifications,
                size: 35,
              ),
              Icon(
                Icons.menu,
                size: 35,
              ),
            ]),
      ),
    );
  }
}
