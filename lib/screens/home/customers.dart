import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/widgets/InputField.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';

class Customers extends StatefulWidget {
  const Customers({Key? key}) : super(key: key);

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  TextEditingController search  = TextEditingController();
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              Visibility(
                visible: visible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getProportionateScreenHeight(32),),
                    MyText(
                      title: 'Customers',
                      size: 20,
                      color: navTextColor,
                    ),
                    SizedBox(height: getProportionateScreenHeight(16),),
                    CustomBbox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(54),
                      radius: BorderRadius.circular(10),
                      shadowcolor: shadowColor.withOpacity(0.2),
                      widget: InputField(
                        label: 'Search by name or number',
                        controller: search,
                        inputAction: TextInputAction.done,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(24),),
                    InkWell(
                      onTap: (){
                        setState(() {
                          visible = false;
                        });
                      },
                      child: CustomBbox(
                        color: Colors.white,
                        radius: BorderRadius.circular(4),
                        width: double.infinity,
                        height: getProportionateScreenHeight(66),
                        widget: Padding(
                          padding: const EdgeInsets.only(left: 15.0,),
                          child: Row(
                            children: [
                             CustomBbox(
                               height: getProportionateScreenHeight(28),
                               width: getProportionateScreenWidth(28),
                               color: mainColor,
                               widget: Center(
                                 child: MyText(
                                   title: 'B',
                                   color: white,
                                   weight: FontWeight.w400,
                                   size: 14
                                 ),
                               )
                             ),
                              SizedBox(width: getProportionateScreenWidth(15),),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: getProportionateScreenHeight(10),),
                                  MyText(
                                    title: 'Brown Lydia',
                                    size: 14,
                                    weight: FontWeight.w400,
                                    color: navTextColor,
                                    align: TextAlign.center
                                  ),
                                  SizedBox(height: getProportionateScreenHeight(8),),
                                  MyText(
                                      title: '+2348138456786',
                                      size: 12,
                                      weight: FontWeight.w400,
                                      color: textColor,
                                      align: TextAlign.center
                                  )
                                ],
                              )
                            ],
                          ),
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
                        child: Row(
                          children: [
                            CustomBbox(
                                height: getProportionateScreenHeight(28),
                                width: getProportionateScreenWidth(28),
                                color: mainColor,
                                widget: Center(
                                  child: MyText(
                                      title: 'P',
                                      color: white,
                                      weight: FontWeight.w400,
                                      size: 14
                                  ),
                                )
                            ),
                            SizedBox(width: getProportionateScreenWidth(15),),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: getProportionateScreenHeight(10),),
                                MyText(
                                    title: 'Peter George',
                                    size: 14,
                                    weight: FontWeight.w400,
                                    color: navTextColor,
                                    align: TextAlign.center
                                ),
                                SizedBox(height: getProportionateScreenHeight(8),),
                                MyText(
                                    title: '+2348138456786',
                                    size: 12,
                                    weight: FontWeight.w400,
                                    color: textColor,
                                    align: TextAlign.center
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
                replacement: Column(
                  children: [
                    SizedBox(height: getProportionateScreenHeight(32),),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.popAndPushNamed(context, 'ButtonNav');
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
                        Spacer(),
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
                                          color: textColor,
                                          align: TextAlign.center,
                                          size: 14,
                                          weight: FontWeight.w400
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
                                Navigator.pushNamed(context, 'EditCustomers');
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
            ],
          ),
        ),
      )
    );
  }
}

