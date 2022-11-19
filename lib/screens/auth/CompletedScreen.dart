import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';
import 'loginScreen.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: scaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 248,
            width: 248,
            foregroundDecoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(image6),
              ),
            ),
          ),
          bigspace,
          MyText(
            title: 'Registration Completed',
            size: headersize,
            color: mainColor,
          ),
          smallspace,
          MyText(
            title:
                'Your account was successfully created. It`s time to take your business to the next level with Digi Invoice',
            size: textsize,
            color: textColor,
            align: TextAlign.center,
          ),
          bigspace,
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => LoginScreen()));
            },
            child: CustomBbox(
              color: mainColor,
              height: 45,
              width: 128,
              radius: BorderRadius.circular(20),
              widget: Center(
                child: MyText(
                  title: 'Done',
                  color: Colors.white,
                  size: textsize,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
