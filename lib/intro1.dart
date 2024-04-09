import 'package:flutter/material.dart';
class IntroPage1  extends StatelessWidget {
  const IntroPage1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text('Test Your Skin With EpidermX', style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('If you are looking for specialized skin care then welcome!',
                  style: TextStyle(fontWeight: FontWeight.w300, height: 1.5),
                ),
              ],
            ),
          ),
          Expanded(child: Image.asset('assets/derm.png'))
        ],
      ),
    );
  }
}
