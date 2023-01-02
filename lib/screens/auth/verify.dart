import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'CompletedScreen.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final formKey = GlobalKey<FormState>();
  String currentText = "";
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
                title: 'Verify OTP',
                size: headersize,
                color: mainColor,
                weight: FontWeight.w500,
              ),
              smallspace,
              MyText(
                title: 'Enter the six digit code sent to',
                color: textColor,
                size: textsize,
                align: TextAlign.center,
              ),
              MyText(
                title: 'sharondree@gmail.com',
                color: mainColor,
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
                  SizedBox(
                    width: getProportionateScreenWidth(4),
                  ),
                  MyText(
                    size: textsize,
                    color: mainColor,
                    title: '00:01',
                    weight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(48),
              ),
              StatefulBuilder(
                builder: (context, setState) {
                  return Form(
                    key: formKey,
                    child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 5,
                      obscureText: true,
                      obscuringCharacter: '*',
                      obscuringWidget: Image.asset(
                        image1,
                        scale: 1.8,
                        // color: RentaMainColor,
                      ),
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 5) {
                          return "Complete form";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 56,
                        fieldWidth: 56,
                        activeFillColor: Colors.white,
                        inactiveColor: Colors.transparent,
                        inactiveFillColor: white,
                        selectedColor: mainColor,
                        selectedFillColor: mainColor,
                      ),
                      cursorColor: Colors.black,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      // errorAnimationController: errorController,
                      // controller: textEditingController,
                      keyboardType: TextInputType.number,
                      boxShadows: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                      onCompleted: (v) {
                        debugPrint("Completed");
                      },
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                        debugPrint(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        debugPrint("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: getProportionateScreenHeight(48),
              ),
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
              ),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Resend',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
