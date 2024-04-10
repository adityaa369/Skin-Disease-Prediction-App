import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MedicalReportCard extends StatefulWidget {
  @override
  _MedicalReportCardState createState() => _MedicalReportCardState();
}

class _MedicalReportCardState extends State<MedicalReportCard> {
  String lastPrediction = "No prediction available";

  @override
  void initState() {
    super.initState();
    getLastPrediction();
  }

  Future<void> getLastPrediction() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      lastPrediction = prefs.getString('lastPrediction') ?? "No prediction available";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical Report Card"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Last Prediction:",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              lastPrediction,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
