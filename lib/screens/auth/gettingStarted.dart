import 'package:digiinvoice/screens/auth/SignUP.dart';
import 'package:digiinvoice/screens/auth/loginScreen.dart';
import 'package:flutter/material.dart';
import '../../const.dart';
import '../../widgets/Mytext.dart';
import '../../widgets/customBox.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image6),
                  ),
                ),
              ),
              bigspace,
              MyText(
                title: 'Digi Invoice',
                color: mainColor,
                weight: FontWeight.w600,
                size: 24,
              ),
              smallspace,
              MyText(
                title: 'Manage your business more easily',
                color: textColor,
                weight: FontWeight.w500,
                align: TextAlign.center,
                size: textsize,
              ),
              bigspace,
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignUp()));
                },
                child: CustomBbox(
                  width: 335,
                  height: 54,
                  color: mainColor,
                  radius: BorderRadius.circular(20),
                  widget: Center(
                    child: MyText(
                      title: 'Sign Up',
                      color: Colors.white,
                      size: textsize,
                      weight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              smallspace,
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: CustomBbox(
                  width: 335,
                  height: 54,
                  color: Colors.white,
                  radius: BorderRadius.circular(20),
                  widget: Center(
                    child: MyText(
                      title: 'Log In',
                      color: mainColor,
                      size: textsize,
                      weight: FontWeight.w600,
                    ),
                  ),
                  borderColor: mainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
