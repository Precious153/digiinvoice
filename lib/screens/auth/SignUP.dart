import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/screens/auth/verify.dart';
import 'package:digiinvoice/widgets/InputField.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';
import '../../widgets/Mytext.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value = false;
  TextEditingController businessName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController reEnterPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  title: 'Create an account',
                  color: mainColor,
                  size: headersize,
                ),
                smallspace,
                MyText(
                  title: 'Kindly fill the following details to get started',
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
                    label: 'Business Name',
                    controller: businessName,
                  ),
                ),
                smallspace,
                CustomBbox(
                  width: 335,
                  height: 54,
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Email Address',
                    controller: email,
                  ),
                ),
                smallspace,
                CustomBbox(
                  width: 335,
                  height: 54,
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Phone Number',
                    controller: phoneNumber,
                  ),
                ),
                smallspace,
                CustomBbox(
                  width: 335,
                  height: 54,
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Create Password',
                    icon: Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                    controller: password,
                  ),
                ),
                smallspace,
                CustomBbox(
                  width: 335,
                  height: 54,
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Re-enter Password',
                    icon: Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                    inputAction: TextInputAction.done,
                    controller: reEnterPassword,
                  ),
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          width: 5,
                        ),
                      ),
                      value: value,
                      onChanged: (newValue) {
                        value = newValue!;
                        setState(() {});
                      },
                    ),
                    MyText(
                      title: 'I accept the Term of Use & Privacy Policy',
                      color: textColor,
                      size: textsize,
                    ),
                  ],
                ),
                SizedBox(
                  height: 53,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => VerifyScreen()));
                  },
                  child: CustomBbox(
                    width: 335,
                    height: 54,
                    color: mainColor,
                    radius: BorderRadius.circular(20),
                    widget: Center(
                      child: MyText(
                        title: 'Continue',
                        color: Colors.white,
                        size: textsize,
                        weight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
