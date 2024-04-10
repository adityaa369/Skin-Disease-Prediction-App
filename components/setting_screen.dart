import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';

class SettingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Settings",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            leading: CircleAvatar(
              radius: 30, // Set the radius to 30
              child: Icon(
                Icons.person,
                size: 30, // Set the size of the icon
              ),
            ),
            title: Text("User Name",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),),
            subtitle: Text("Profile"),
          ),
          Divider(
            height: 50,
          ),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.person,
                color: Colors.blue.shade100,
                size: 35,
              ),
            ),
            title: Text("Profile",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.medical_information_outlined,
                color: Colors.green,
                size: 35,
              ),
            ),
            title: Text("Medical Report",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.privacy_tip_outlined,
                color: Colors.indigo,
                size: 35,
              ),
            ),
            title: Text("Privacy",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange.shade200,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.info_outline_rounded,
                color: Colors.orange,
                size: 35,
              ),
            ),
            title: Text("About Us",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
            },
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.logout,
                color: Colors.redAccent.shade100,
                size: 35,
              ),
            ),
            title: Text("Log Out",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),



        ],
      ),
    );
  }
}
