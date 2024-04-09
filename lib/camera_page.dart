import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

import 'predict_page.dart';

class Tensorflow extends StatefulWidget {
  @override
  _TensorflowState createState() => _TensorflowState();
}

class _TensorflowState extends State<Tensorflow> {
  late List<dynamic> _outputs;
  File? _image;
  bool _loading = false;
  bool _classificationAvailable = false; // New variable to track classification status
  String? _diseaseName; // Variable to store the disease name

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
      numThreads: 1,
    );
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      imageMean: 0.0,
      imageStd: 255.0,
      numResults: 2,
      threshold: 0.2,
      asynch: true,
    );
    if (output != null && output.isNotEmpty) {
      setState(() {
        _loading = false;
        _outputs = output;
        _classificationAvailable = true;
        final label = _outputs[0]["label"] ?? "Unknown";
        final parts = label.split(' '); // Split the label
        _diseaseName = parts.sublist(1).join(' '); // Join the parts (excluding the first word)
      });
    }
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    setState(() {
      _loading = true;
      _image = File(image.path);
    });
    classifyImage(_image!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Skin Testing",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.grey[300],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _loading
                    ? Container(
                  height: 250,
                  width: 250,
                )
                    : Container(
                  margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _image == null ? Container() : Image.file(_image!),
                      SizedBox(
                        height: 10,
                      ),
                      _image == null
                          ? Container()
                          : _classificationAvailable
                          ? Text(
                        "Predicted Disease: $_diseaseName" ?? "Unknown",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                          : Container(child: Text("")),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                ElevatedButton(
                  onPressed: pickImage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[300],
                  ),
                  child: Text(
                    "Take Picture",
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                if (_classificationAvailable) // Conditionally show the button
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the report screen
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ReportScreen(
                            _image!,
                            _diseaseName ?? "Unknown",
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Customize the button style
                    ),
                    child: Text(
                      "Generate Report",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
