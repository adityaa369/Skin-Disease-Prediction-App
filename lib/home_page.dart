import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mavericks2_app/Scabies.dart';
import 'package:mavericks2_app/Seborrheic.dart';
import 'package:mavericks2_app/acne_page.dart';
import 'package:mavericks2_app/atopic_dermatitis.dart';
import 'package:mavericks2_app/camera_page.dart';
import 'package:mavericks2_app/contact_dermatits.dart';
import 'package:mavericks2_app/disease_card.dart';
import 'package:mavericks2_app/home_page.dart';
import 'package:mavericks2_app/messages_screen.dart';
import 'package:mavericks2_app/sesrch.dart';
import 'package:mavericks2_app/upload.dart';
import 'package:mavericks2_app/vitiligo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchTerm = '';
  int _selectedIndex = 0;
  late CameraDescription firstCamera;
  String medicalReport = '';

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
  List blogs = [
    "Acne",
    "Psoriasis",
    "Basal Cell Carcinoma",
    "Melanoma",
  ];

  List imgs = [
    'der1.jpeg',
    'der2.jpeg',
    'der4.jpeg',
    'der4.jpeg',
    'der1.jpeg',
    'der2.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("EpidermX", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.person),
                  )
                ],
              ),

            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [

                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/doc2.png'),

                  ),
                  SizedBox(
                    width: 20,
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Test your skin here.",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      SizedBox(height: 10),
                      Text("Know skin condition right now",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {
                            // Add your navigation logic here
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Tensorflow()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],),
                  )
                ],),
              ),
            ),

            SizedBox(height: 15),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Find information about diseases...',
                  ),
                  onSubmitted: (value) {
                    searchTerm = value;
                    // Navigate to the search results page with the entered search term.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchResultsPage(searchTerm),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),

            Container(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Add your navigation logic here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AcneBlogPage()),
                            );
                          },
                          child: DiseaseCard(categoryName: 'Acne'),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Add your navigation logic here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Vitiligo(),
                              )
                            );
                          },
                          child: DiseaseCard(categoryName: 'Vitiligo'),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Add your navigation logic here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ContactDermatitis()),
                            );
                          },
                          child: DiseaseCard(categoryName: 'Contact Dermatisitis'),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Add your navigation logic here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Atopic()),
                            );
                          },
                          child: DiseaseCard(categoryName: 'Atopic Dermatitis'),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Add your navigation logic here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Ser()),
                            );
                          },
                          child: DiseaseCard(categoryName: 'Seborrheic Dermatitis'),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Add your navigation logic here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Scabies()),
                            );
                          },
                          child: DiseaseCard(categoryName: 'Scabies'),
                        ),
                      ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [

                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/dcf.png'),

                  ),
                  SizedBox(
                    width: 20,
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Upload Here to Test",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                        SizedBox(height: 10),
                        Text("Know skin condition right now",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                        SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {
                            // Add your navigation logic here
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Upload()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Upload Here",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],),
                  )
                ],),
              ),
            ),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [

                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/dcc.png'),

                  ),
                  SizedBox(
                    width: 20,
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Reports are Here",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                        SizedBox(height: 15),
                        Text("Get your medical report here",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            // Add your navigation logic here
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Upload()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Medical Report",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],),
                  )
                ],),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
