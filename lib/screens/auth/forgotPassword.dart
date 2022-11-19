import 'package:digiinvoice/screens/auth/CreateNewPassword.dart';
import 'package:flutter/material.dart';
import '../../const.dart';
import '../../widgets/Mytext.dart';
import '../../widgets/customBox.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
          child: Column(
            children: [
              MyText(
                title: 'Forgot Password',
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => CreateNewPassword()));
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
              ),
              smallspace,
              MyText(
                size: textsize,
                color: textColor,
                title: ' Resend OTP',
                weight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
