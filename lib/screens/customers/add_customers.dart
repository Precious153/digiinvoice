import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/widgets/InputField.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';



class AddCustomer extends StatefulWidget {
  const AddCustomer({Key? key}) : super(key: key);

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  TextEditingController customer_name = TextEditingController();
  TextEditingController customer_email = TextEditingController();
  TextEditingController customer_phone = TextEditingController();
  TextEditingController customer_address = TextEditingController();
  TextEditingController customer_info = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: getProportionateScreenHeight(32),),
                Row(
                  children: [
                    MyText(
                      title: 'New Customer',
                      size: 20,
                      color: navTextColor,
                    ),
                    Spacer(),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'ButtonNav');
                        },
                        child: Icon(Icons.cancel_outlined,color:navTextColor,)),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(49),),
                CustomBbox(
                  width: 335,
                  height: 54,
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Customer Name',
                    controller: customer_name,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(28),),
                CustomBbox(
                  width: 335,
                  height: 54,
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Email Address',
                    controller: customer_email,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(28),),
                CustomBbox(
                  width: 335,
                  height: 54,
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Phone Number',
                    controller: customer_phone,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(8),),
                MyText(
                  title: 'Select from Contact',
                  size: 12,
                  weight: FontWeight.w400,
                  color: Colors.red
                ),
                SizedBox(height: getProportionateScreenHeight(28),),
                CustomBbox(
                  width: 335,
                  height: 54,
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Address',
                    controller: customer_address,
                  ),
                ),

                SizedBox(height: getProportionateScreenHeight(28),),
                CustomBbox(
                  width: 335,
                  height: 54,
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Additional Information',
                    controller: customer_info,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(102),),
                InkWell(
                  onTap: (){
                    // Navigator.pushNamed(context, 'ButtonNav');
                    showModalBottomSheet(context: context,
                        builder:(context)=>Container(
                          height: getProportionateScreenHeight(271),
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(height: getProportionateScreenHeight(54),),
                              MyText(
                                title: 'Are you sure you want to\n'
                                    'leave this page',
                                color: navTextColor,
                                align: TextAlign.center,
                                size: 20,
                              ),
                              SizedBox(height: getProportionateScreenHeight(24),),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, 'ButtonNav');
                                },
                                child: CustomBbox(
                                  color: mainColor,
                                  radius: BorderRadius.circular(20),
                                  width: getProportionateScreenWidth(128),
                                  height: getProportionateScreenHeight(45),
                                  widget: Center(
                                    child: MyText(
                                      color: Colors.white,
                                      size: textsize,
                                      title: 'Yes Leave',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: getProportionateScreenHeight(16),),
                              InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: MyText(
                                  title: 'Continue',
                                  color: textColor,
                                  size: 14,
                                  weight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                    );
                  },
                  child: CustomBbox(
                    color: mainColor,
                    radius: BorderRadius.circular(20),
                    width: double.infinity,
                    height: getProportionateScreenHeight(54),
                    widget: Center(
                      child: MyText(
                        color: Colors.white,
                        size: textsize,
                        title: 'Save',
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