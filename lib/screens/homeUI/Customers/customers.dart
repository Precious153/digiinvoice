import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/models/provider/formControllers.dart';
import 'package:digiinvoice/screens/homeUI/Customers/add_customers.dart';
import 'package:digiinvoice/screens/homeUI/Customers/edit_customers.dart';
import 'package:digiinvoice/widgets/InputField.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/const%20widgets.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../const.dart';

class Customers extends StatelessWidget {
  const Customers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormControllers>(context);
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 32.0,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                color: Colors.black,
                title: 'Customers',
                size: headersize,
              ),
              SizedBox(height: getProportionateScreenHeight(16),),
              Center(
                child: CustomBbox(
                  width: double.infinity,
                  height: getProportionateScreenHeight(54),
                  radius: BorderRadius.circular(10),
                  shadowcolor: shadowColor.withOpacity(0.2),
                  widget: InputField(
                    hint: 'Search for product and services',
                    inputAction: TextInputAction.done,
                    controller: formProvider.customerSearchController,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 5.0,top: 5,bottom: 5),
                      child: CustomBbox(
                        width: getProportionateScreenWidth(30),
                        height: getProportionateScreenHeight(30),
                        radius: BorderRadius.circular(5),
                        color: mainColor,
                        widget: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(216),),
              MyText(
                title:
                'You have`t saved any inventory yet.Do you want to add a product or service?',
                align: TextAlign.center,
                color: textColor,
                size: textsize,
                weight: FontWeight.w400,
              ),
              SizedBox(height: getProportionateScreenHeight(235),),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  =>AddCustomer())
                  );
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomBbox(
                      color: mainColor,
                      radius: BorderRadius.circular(20),
                      width: getProportionateScreenWidth(174),
                      height: getProportionateScreenHeight(45),
                      widget: Center(
                        child: Row(
                          children: [
                            SizedBox(width: getProportionateScreenWidth(10),),
                            Icon(Icons.add,color: Colors.white,),
                            SizedBox(width: getProportionateScreenWidth(10),),
                            MyText(
                              color: Colors.white,
                              size: 14,
                              weight: FontWeight.w400,
                              title: 'Add Customers',
                            ),
                            SizedBox(height: getProportionateScreenHeight(51),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
