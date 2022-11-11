import 'package:flutter/material.dart';
import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
class onboard2 extends StatelessWidget {
  const onboard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
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
                title: "Share Invoice in Seconds",
                color: Colors.blueAccent,
                size: 24,
                weight: FontWeight.w600,
              ),
              SizedBox(height: 10,),
              MyText(title: "Easily share invoice with your customer in no time",
                color: Colors.black12,
                weight: FontWeight.w400,)
            ],
          ),
        ),
      ),);
  }
}
