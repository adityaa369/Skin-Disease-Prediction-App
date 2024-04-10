import 'package:flutter/material.dart';
class IntroPage2  extends StatelessWidget {
  const IntroPage2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text('Consult Your Doctor', style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold,color: Colors.black)),
                SizedBox(height: 10),
                Text('Take your prescripion from expertised doctor',
                  style: TextStyle(fontWeight: FontWeight.w300, height: 1.5),
                ),
              ],
            ),
          ),
    Expanded(
    child: Padding(
    padding: EdgeInsets.symmetric(vertical: 10), // Adjust the vertical padding
    child: Image.asset('assets/derms.png'),
          ),
    )
        ],
      ),
    );
  }
}
