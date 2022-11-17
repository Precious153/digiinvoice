import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/screens/auth/SignUP.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/provider/formControllers.dart';
import '../../widgets/InputField.dart';
import '../../widgets/customBox.dart';
import '../homeUI/home.dart';
import 'forgotPassword.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormControllers>(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              MyText(
                title: 'Welcome back!',
                color: mainColor,
                size: headersize,
              ),
              smallspace,
              MyText(
                title: 'Log into your account with the details below',
                color: textColor,
                size: textsize,
                weight: FontWeight.w400,
              ),
              smallspace,
              CustomBbox(
                width: 335,
                height: 54,
                radius: BorderRadius.circular(10),
                shadowcolor: shadowColor.withOpacity(0.2),
                widget: InputField(
                  label: 'Email Address',
                  controller: formProvider.password,
                ),
              ),
              smallspace,
              CustomBbox(
                width: 335,
                height: 54,
                radius: BorderRadius.circular(10),
                shadowcolor: shadowColor.withOpacity(0.2),
                widget: InputField(
                  label: 'Enter Password',
                  controller: formProvider.email,
                  inputAction: TextInputAction.done,
                ),
              ),
              SizedBox(height: 24),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ForgotPasswordScreen()));
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: MyText(
                    title: 'Forgot Password',
                    size: textsize,
                    color: textColor,
                  ),
                ),
              ),
              SizedBox(height: 48),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => Home()));
                },
                child: CustomBbox(
                  color: mainColor,
                  radius: BorderRadius.circular(20),
                  width: 335,
                  height: 54,
                  widget: Center(
                    child: MyText(
                      color: Colors.white,
                      size: textsize,
                      title: 'Confirm',
                    ),
                  ),
                ),
              ),
              smallspace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    size: textsize,
                    color: textColor,
                    title: 'Don`t have an account?',
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => SignUp()));
                    },
                    child: MyText(
                      size: textsize,
                      color: mainColor,
                      title: ' Sign Up',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
