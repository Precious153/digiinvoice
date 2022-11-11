import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/onboarding.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
        Duration(
          milliseconds: 3000,
        ),
        () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Onboarding()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 400,
              ),
              Image.asset(image1),
              SizedBox(
                height: 5,
              ),
              MyText(
                title: "Digi Invoice",
                size: 40,
                color: Colors.blueAccent,
                weight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
