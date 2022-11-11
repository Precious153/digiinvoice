import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class onboard1 extends StatelessWidget {
  const onboard1({Key? key}) : super(key: key);

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
              Image.asset(image2),
              SizedBox(
                height: 10,
              ),
              MyText(
                title: "Get paid faster",
                color: Colors.blueAccent,
                size: 24,
                weight: FontWeight.w600,
              ),
              SizedBox(height: 10,),
              MyText(title: "Share bank details and payment links with your customers",
              color: Colors.black12,
              weight: FontWeight.w400,)
            ],
          ),
        ),
      ),
    );
  }
}
