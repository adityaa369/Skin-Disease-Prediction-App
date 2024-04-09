import 'package:flutter/material.dart';
import 'package:mavericks2_app/camera_page.dart';
import 'package:mavericks2_app/intro1.dart';
import 'package:mavericks2_app/intro2.dart';
import 'package:mavericks2_app/navbar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 1);
              });

            },
            children: [
              IntroPage1(),
              IntroPage2(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.78),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
                  },
                  child: Text('SKIP'),
                ),
                
                
                SmoothPageIndicator(controller: _controller, count: 2),
                
                onLastPage
                ? GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
                  },
                  child: Text('DONE'),
                )
                : GestureDetector(
                  onTap: () {
                    _controller.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeIn);
                  },
                  child: Text('NEXT'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
