import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/screens/auth/verify.dart';
import 'package:digiinvoice/widgets/InputField.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/provider/formControllers.dart';
import '../../widgets/Mytext.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormControllers>(context);
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Business Name',
                    controller: formProvider.businessName,
                  ),
                ),
                smallspace,
                CustomBbox(
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Email Address',
                    controller: formProvider.email,
                  ),
                ),
                smallspace,
                CustomBbox(
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Phone Number',
                    controller: formProvider.phoneNumber,
                  ),
                ),
                smallspace,
                CustomBbox(
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Create Password',
                    icon: Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                    controller: formProvider.password,
                  ),
                ),
                smallspace,
                CustomBbox(
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Re-enter Password',
                    icon: Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                    inputAction: TextInputAction.done,
                    controller: formProvider.reEnterPassword,
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
                    width: getProportionateScreenWidth(335),
                    height: getProportionateScreenHeight(54),
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
