import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings(
      {super.key,
      required this.settingstittle,
      required this.profilepic,
      required this.profilename});
  final String settingstittle;
  final String profilepic;
  final String profilename;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(children: [
            // IconButton(
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => MainScreen()));
            //   },
            //   icon: Icon(Icons.arrow_back),
            //   color: Colors.white,
            // ),
            Text(
              settingstittle,
              style: TextStyle(color: Colors.white),
            ),
          ]),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search), color: Colors.white)
          ]),
      body: SingleChildScrollView(
        child: Column(children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(profilepic),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      profilename,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down_outlined),
                    )
                  ],
                ),
                Text(
                  "Hey there! I am using whatsApp",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person_pin),
                          iconSize: 30,
                          color: Color.fromARGB(255, 74, 159, 77),
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.lock),
                          iconSize: 30,
                          color: Color.fromARGB(255, 74, 159, 77),
                        ),
                        Text(
                          "Privacy",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.contacts),
                          iconSize: 30,
                          color: Color.fromARGB(255, 74, 159, 77),
                        ),
                        Text(
                          "Contacts",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.star_border_purple500_sharp,
              size: 25,
            ),
            title: Text(
              "Starred messages",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.devices_other,
              size: 25,
            ),
            title: Text(
              "Linked devices",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            child: Divider(),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.key,
              size: 25,
            ),
            title: Text(
              "Account",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Security notifications,change\nnumber"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.face_4_outlined,
              size: 25,
            ),
            title: Text(
              "Avatar",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Create,edit,profile photo"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.chat_sharp,
              size: 25,
            ),
            title: Text(
              "Chats",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Theme,wallpaper,chat history"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.notifications_none,
              size: 25,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Message,group & call tones"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.data_saver_off_outlined,
              size: 25,
            ),
            title: Text(
              "Storage and data",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Network usage,auto download"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.language,
              size: 25,
            ),
            title: Text(
              "App language",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("English (device's language)"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.help_outline_outlined,
              size: 25,
            ),
            title: Text(
              "Help",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Help center,contact us,privacy policy"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.group_outlined,
              size: 25,
            ),
            title: Text(
              "Invite a friend",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("from"),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.precision_manufacturing_rounded),
              Text("Meta"),
            ],
          )
          
        ]),
      ),
    );
  }
}
