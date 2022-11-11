import 'package:flutter/material.dart';
import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/widgets/Mytext.dart';

class onboard3 extends StatelessWidget {
  const onboard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset(image3),
                SizedBox(
                  height: 10,
                ),
                MyText(
                  title: "Generate receipt quickly",
                  color: Colors.blueAccent,
                  size: 24,
                  weight: FontWeight.w600,
                ),
                SizedBox(height: 10,),
                MyText(title: "Generate quick receipt for your business at any time",
                  color: Colors.black12,
                  weight: FontWeight.w400,)
              ],
            ),
          ),
        )
    );
  }
}
