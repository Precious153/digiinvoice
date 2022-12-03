import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/screens/homeUI/Customers/customers.dart';
import 'package:digiinvoice/screens/homeUI/Customers/edit_customers.dart';
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,
                    color: navTextColor,),
                  ),
                  SizedBox(width: getProportionateScreenWidth(9.5),),
                  MyText(
                    title: 'Brown Lydia',
                    size: 20,
                    color: navTextColor,
                  ),

                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          showModalBottomSheet(context: context,
                            builder:(context)=>Container(
                              height: getProportionateScreenHeight(271),
                              width: double.infinity,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  SizedBox(height: getProportionateScreenHeight(24),),
                                  MyText(
                                    title: 'Are you sure you want to\ndelete this customer?',
                                    color: navTextColor,
                                    align: TextAlign.center,
                                    size: 20,
                                  ),
                                  SizedBox(height: getProportionateScreenHeight(16),),
                                  MyText(
                                    title: 'You will not be able to recover this\ndetails afterwards',
                                    align: TextAlign.center,
                                    color: textColor,
                                    size: 12,
                                    weight: FontWeight.w400,
                                  ),
                                  SizedBox(height: getProportionateScreenHeight(24),),
                                  InkWell(
                                    onTap: (){
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder:
                                              (context)=>Customers()));
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
                                          title: 'Yes, delete',
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
                                      title: 'Cancel',
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
                      ),
                      SizedBox(width: getProportionateScreenWidth(16),),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditCustomers()));
                        },
                        child: CustomBbox(
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
