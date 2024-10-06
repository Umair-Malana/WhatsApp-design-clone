import 'package:flutter/material.dart';
import 'package:whats_app/cfirst.dart';
import 'package:whats_app/settings.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  final String spic = "assets/images/6.jpg";
  final String samar = "Samar";
  final String profilepic = "assets/images/22.jpg";
  final String apic = "assets/images/111.jpg";
  final String aman = "assets/images/a1.jpg";
  final String settingstitle = "You";
  final String profilename = "Umair";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Settings(
                            settingstittle: settingstitle,
                            profilepic: profilepic,
                            profilename: profilename,
                          )));
            },
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(profilepic),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Cfirst(
                            spic: spic,
                            samar: samar,
                          )));
            },
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(spic),
            ),
            title: Text(
              "Samar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text("The operate gone successful"),
            trailing: Text("yesterday"),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(apic),
            ),
            title: Text(
              "Ayaz",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text("how are you"),
            trailing: Text("yesterday"),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(aman),
            ),
            title: Text(
              "Aman",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text("voy ....."),
            trailing: Text("today"),
          ),
        ],
      ),
    );
  }
}
