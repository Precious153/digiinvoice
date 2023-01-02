import 'package:flutter/material.dart';
import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/widgets/InputField.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:provider/provider.dart';
import '../../../models/provider/formControllers.dart';

class EditCustomers extends StatefulWidget {
  const EditCustomers({Key? key}) : super(key: key);

  @override
  State<EditCustomers> createState() => _EditCustomersState();
}

class _EditCustomersState extends State<EditCustomers> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final formProvider = Provider.of<FormControllers>(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      title: 'Edit Customer',
                      size: 20,
                      color: navTextColor,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: navTextColor,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(49),
                ),
                CustomBbox(
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Customer Name',
                    controller: formProvider.customerName,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(28),
                ),
                CustomBbox(
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Email Address',
                    controller: formProvider.customerEmail,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(28),
                ),
                CustomBbox(
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Phone Number',
                    controller: formProvider.customerPhone,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: MyText(
                    title: 'Select from Contact',
                    size: 12,
                    weight: FontWeight.w400,
                    color: Colors.red,
                    align: TextAlign.end,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(28),
                ),
                CustomBbox(
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Address',
                    controller: formProvider.customerAddress,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(28),
                ),
                CustomBbox(
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    label: 'Additional Information',
                    controller: formProvider.customerInfo,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(102),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, 'ButtonNav');
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
