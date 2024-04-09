import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mavericks2_app/camera_page.dart';
import 'package:mavericks2_app/home_page.dart';
import 'package:mavericks2_app/messages_screen.dart';
import 'package:mavericks2_app/setting_screen.dart';
import 'package:mavericks2_app/upload.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  late CameraDescription firstCamera;

  @override
  void initState() {
    super.initState();
    _initializeCameras();
  }

  Future<void> _initializeCameras() async {
    final cameras = await availableCameras();
    firstCamera = cameras.first;
    setState(() {}); // Ensure the widget rebuilds with the new camera.
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      HomeScreen(),
      Tensorflow(),
      Upload(),
      MessageScreen(),
      SettingScreen(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_rounded),
              label: "Camera",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_upload_outlined),
              label: "Upload",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services),
              label: "Consult",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

