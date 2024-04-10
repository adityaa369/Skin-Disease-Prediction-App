import 'dart:io';
import 'package:flutter/material.dart';

import '../lib/messages_screen.dart';

class ReportScreen extends StatelessWidget {
  final File image;
  final String predictedDiseaseName;

  ReportScreen(this.image, this.predictedDiseaseName);

  void showReport(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Skin Disease Report',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w500,
          ),),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Predicted Skin Disease: $predictedDiseaseName',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),),
              SizedBox(height: 7),
              Text('This is a report about the skin disease and its details.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the report dialog
              },
              child: Text('Close',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the report dialog
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MessageScreen(), // Navigate to MessageScreen
                  ),
                );
              },
              child: Text('Consult',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skin Disease Prediction Report'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300, // Set the desired width for the container
              height: 400, // Set the desired height for the container
                child: Image.file(image), // Center the image within the container
            ),
            SizedBox(height: 14),
            Text('Predicted Skin Disease: $predictedDiseaseName',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w700,
            )),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Call the showReport function and pass the context
                showReport(context);
              },
              child: Text('Generate Report',
              style: TextStyle(
                fontSize: 15,
              ),),
            ),
          ],
        ),
      ),
      );
  }
}
