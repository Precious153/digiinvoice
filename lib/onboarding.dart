import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboard1.dart';
import 'onboard2.dart';
import 'onboard3.dart';
import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'customBox.dart';
import 'signuporlogin.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  PageController _controller = PageController();
  bool done = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  done = (index == 2);
                });
              },
              children: [
                onboard1(),
                onboard2(),
                onboard3(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              _controller.jumpToPage(2);
            },
            child: Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyText(
                    title: "Skip",
                    size: 21,
                    weight: FontWeight.w400,
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  done
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signuporlogin()));
                          },
                          child: CustomBbox(
                            height: 45,
                            width: 91,
                            color: Colors.blue,
                            shapes: BoxShape.rectangle,
                            radius: BorderRadius.circular(20),
                            widget: Center(
                              child: MyText(
                                  title: 'Get Started',
                                  weight: FontWeight.w400,
                                  color: Colors.white,
                                  size: 14),
                            ),
                          ))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: CustomBbox(
                            height: 45,
                            width: 91,
                            color: Colors.blue,
                            shapes: BoxShape.rectangle,
                            radius: BorderRadius.circular(20),
                            widget: Center(
                              child: MyText(
                                  title: 'Next',
                                  weight: FontWeight.w400,
                                  color: Colors.white,
                                  size: 14),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
