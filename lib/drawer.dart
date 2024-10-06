import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isSwtich = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      onEndDrawerChanged: (isopen) {
        print(isopen);
      },

      drawerEdgeDragWidth: 200,
      onDrawerChanged: (end) {},
      drawerScrimColor: Colors.red,
      endDrawer: Drawer(
        backgroundColor: Colors.amber,
        shadowColor: Colors.red,
        // width: 200,
        // shape: BeveledRectangleBorder(),
        child: ListView(
          children: [
            DrawerHeader(
                duration: Duration(seconds: 2),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/1.JPG'),
                        fit: BoxFit.cover),
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Text('Hey')),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Mr Hamza'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('hamza@gmail.com'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        shadowColor: Colors.red,
        // width: 200,
        // shape: BeveledRectangleBorder(),
        child: ListView(
          children: [
            DrawerHeader(
                duration: Duration(seconds: 2),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/1.JPG'),
                        fit: BoxFit.cover),
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                child: Text('Hey')),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Mr Hamza'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('hamza@gmail.com'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Switch(
              thumbIcon: MaterialStatePropertyAll(Icon(Icons.people)),
              inactiveThumbColor: Colors.red,
              activeColor: Colors.blue,
              inactiveTrackColor: Colors.black,
              activeTrackColor: Colors.purple,
              // trackColor: MaterialStatePropertyAll(Colors.green),s
              // thumbColor: MaterialStatePropertyAll(Colors.amber),
              value: isSwtich,
              onChanged: (val) {
                setState(() {
                  isSwtich = val;
                });
              })
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.access_alarm_outlined), label: "Alarm")
      //   ],
      // ),
    );
  }
}
