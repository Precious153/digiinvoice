import 'package:digiinvoice/screens/auth/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../const.dart';
import '../../models/provider/formControllers.dart';
import '../../widgets/InputField.dart';
import '../../widgets/Mytext.dart';
import '../../widgets/customBox.dart';

class CreateNewPassword extends StatelessWidget {
  CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormControllers>(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
          child: Align(
            alignment: Alignment.center,
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
                  title: 'New Password',
                  color: Colors.black,
                  size: textsize,
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
                    label: 'Re-enter Password',
                    icon: Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                    inputAction: TextInputAction.done,
                    controller: formProvider.reEnterPassword,
                  ),
                ),
                bigspace,
                CustomBbox(
                  width: 335,
                  height: 54,
                  color: mainColor,
                  radius: BorderRadius.circular(20),
                  widget: Center(
                    child: MyText(
                      title: 'Confirm',
                      color: Colors.white,
                      size: textsize,
                      weight: FontWeight.w500,
                    ),
                  ),
                ),
                smallspace,
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: MyText(
                    title: 'Return to Log In',
                    color: textColor,
                    size: textsize,
                    weight: FontWeight.w400,
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
