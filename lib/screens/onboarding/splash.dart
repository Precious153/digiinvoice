import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/screens/onboarding/onboarding.dart';
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
          milliseconds: 5000,
        ),
        () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Onboarding()));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image1),
              SizedBox(
                height: 5,
              ),
              MyText(
                title: "Digi Invoice",
                size: 40,
                color: mainColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
