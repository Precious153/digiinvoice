import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';

class TheCustomers extends StatefulWidget {
  const TheCustomers({Key? key}) : super(key: key);

  @override
  State<TheCustomers> createState() => _TheCustomersState();
}

class _TheCustomersState extends State<TheCustomers> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 32),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back,
                  color: navTextColor,),
                  SizedBox(width: getProportionateScreenWidth(9.5),),
                  MyText(
                    title: 'Brown Lydia',
                    size: 20,
                    color: navTextColor,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomBbox(
                          height: getProportionateScreenHeight(28),
                          width: getProportionateScreenWidth(28),
                          color: mainColor,
                          widget: Center(
                            child: Icon(
                              Icons.delete_outline_outlined,
                              color: white,
                              size: 20,
                            ),
                          )
                      ),
                      SizedBox(width: getProportionateScreenWidth(16),),
                      CustomBbox(
                        height: getProportionateScreenHeight(28),
                        width: getProportionateScreenWidth(28),
                        color: mainColor,
                        widget: Center(
                            child: Icon(
                              Icons.edit,
                              size: 20,
                              color: white,
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(30),),

              CustomBbox(
                color: Colors.white,
                radius: BorderRadius.circular(4),
                width: double.infinity,
                height: getProportionateScreenHeight(66),
                widget: Padding(
                  padding: const EdgeInsets.only(left: 15.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: getProportionateScreenHeight(10),),
                      MyText(
                          title: 'Customer Name',
                          size: 12,
                          weight: FontWeight.w400,
                          color: textColor,
                          align: TextAlign.center
                      ),
                      SizedBox(height: getProportionateScreenHeight(8),),
                      MyText(
                          title: 'Brown Lydia',
                          size: 14,
                          weight: FontWeight.w400,
                          color: navTextColor,
                          align: TextAlign.center
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(16),),
              CustomBbox(
                color: Colors.white,
                radius: BorderRadius.circular(4),
                width: double.infinity,
                height: getProportionateScreenHeight(66),
                widget: Padding(
                  padding: const EdgeInsets.only(left: 15.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: getProportionateScreenHeight(10),),
                      MyText(
                          title: 'Email Address',
                          size: 12,
                          weight: FontWeight.w400,
                          color: textColor,
                          align: TextAlign.center
                      ),
                      SizedBox(height: getProportionateScreenHeight(8),),
                      MyText(
                          title: 'brownlydia@gmail.com',
                          size: 14,
                          weight: FontWeight.w400,
                          color: navTextColor,
                          align: TextAlign.center
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(16),),
              CustomBbox(
                color: Colors.white,
                radius: BorderRadius.circular(4),
                width: double.infinity,
                height: getProportionateScreenHeight(66),
                widget: Padding(
                  padding: const EdgeInsets.only(left: 15.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: getProportionateScreenHeight(10),),
                      MyText(
                          title: 'Phone Number',
                          size: 12,
                          weight: FontWeight.w400,
                          color: textColor,
                          align: TextAlign.center
                      ),
                      SizedBox(height: getProportionateScreenHeight(8),),
                      MyText(
                          title: '+2348134567890',
                          size: 14,
                          weight: FontWeight.w400,
                          color: navTextColor,
                          align: TextAlign.center
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(16),),
              CustomBbox(
                color: Colors.white,
                radius: BorderRadius.circular(4),
                width: double.infinity,
                height: getProportionateScreenHeight(85),
                widget: Padding(
                  padding: const EdgeInsets.only(left: 15.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: getProportionateScreenHeight(10),),
                      MyText(
                          title: 'Address',
                          size: 12,
                          weight: FontWeight.w400,
                          color: textColor,
                          align: TextAlign.start
                      ),
                      SizedBox(height: getProportionateScreenHeight(8),),
                      MyText(
                          title: 'Apartment 88, Florence House, Oconnel`s\n'
                              'Road, Maitama, Abuja',
                          size: 14,
                          weight: FontWeight.w400,
                          color: navTextColor,
                          align: TextAlign.start
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(16),),
              CustomBbox(
                color: Colors.white,
                radius: BorderRadius.circular(4),
                width: double.infinity,
                height: getProportionateScreenHeight(66),
                widget: Padding(
                  padding: const EdgeInsets.only(left: 15.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: getProportionateScreenHeight(10),),
                      MyText(
                          title: 'Additional Information',
                          size: 12,
                          weight: FontWeight.w400,
                          color: textColor,
                          align: TextAlign.center
                      ),
                      SizedBox(height: getProportionateScreenHeight(8),),
                      MyText(
                          title: 'Your additional information goes here',
                          size: 14,
                          weight: FontWeight.w400,
                          color: navTextColor,
                          align: TextAlign.center
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(120),),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'AddCustomer');
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
