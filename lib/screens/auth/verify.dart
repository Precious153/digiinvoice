import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';

import 'CompletedScreen.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
          child: Column(
            children: [
              MyText(
                title: 'Verify OTP',
                size: headersize,
                color: mainColor,
                weight: FontWeight.w500,
              ),
              smallspace,
              MyText(
                title:
                    'Enter the six digit code sent to \n sharondree@gmail.com',
                color: textColor,
                size: textsize,
                align: TextAlign.center,
              ),
              bigspace,
              Row(
                children: [
                  MyText(
                    size: textsize,
                    color: textColor,
                    title: 'Expires in',
                    weight: FontWeight.w500,
                  ),
                  MyText(
                    size: textsize,
                    color: mainColor,
                    title: '00:01',
                    weight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(height: 48),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CompletedScreen()));
                },
                child: CustomBbox(
                  color: mainColor,
                  radius: BorderRadius.circular(20),
                  width: 335,
                  height: 54,
                  widget: Center(
                    child: MyText(
                      title: 'Confirm',
                      color: Colors.white,
                      weight: FontWeight.w600,
                      size: textsize,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
