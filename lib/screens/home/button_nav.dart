import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/screens/home/Invoice.dart';
import 'package:digiinvoice/screens/home/customers.dart';
import 'package:digiinvoice/screens/home/inventory.dart';
import 'package:digiinvoice/screens/home/receipt.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class ButtonNav extends StatefulWidget {
  const ButtonNav({Key? key}) : super(key: key);

  @override
  State<ButtonNav> createState() => _ButtonNavState();
}

class _ButtonNavState extends State<ButtonNav> {

  int curretTab =0;
  final List<Widget> screens = [
    Invoice(),
    Receipt(),
    Customers(),
    Inventory(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Invoice();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: getProportionateScreenHeight(66),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen = Invoice();
                          curretTab=0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_chart_sharp,
                            size: getProportionateScreenHeight(18),
                            color:curretTab==0 ?
                            mainColor:textColor,),
                          SizedBox(height: getProportionateScreenHeight(8),),

                          MyText(
                            title:'Invoice',
                            size:getProportionateScreenHeight(10),
                            weight:FontWeight.w400,
                            color: curretTab==0 ?
                            mainColor: textColor,
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen = Receipt();
                          curretTab=1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.receipt_long,
                            size: getProportionateScreenHeight(18),
                            color:curretTab==1 ?
                            mainColor:textColor,),
                          SizedBox(height: getProportionateScreenHeight(8),),
                          MyText(
                            title: 'Receipt',
                            size:getProportionateScreenHeight(10),
                            weight:FontWeight.w400,
                            color: curretTab==1 ?
                            mainColor: textColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen = Customers();
                          curretTab=2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [

                          Icon(Icons.people_outline,
                              size: getProportionateScreenHeight(18),
                              color:curretTab==2 ?
                              mainColor: textColor
                          ),
                          SizedBox(height: getProportionateScreenHeight(8),),
                          MyText(
                            title: 'Customers',
                            size:getProportionateScreenHeight(10),
                            weight:FontWeight.w400,
                            color: curretTab==2 ?
                            mainColor: textColor,
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen =Inventory();
                          curretTab=3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.inventory_2_outlined,
                            size: getProportionateScreenHeight(18),
                            color:curretTab==3 ?
                            mainColor:textColor,),
                          SizedBox(height: getProportionateScreenHeight(8),),
                          MyText(
                            title: 'Inventory',
                            size:getProportionateScreenHeight(10),
                            weight:FontWeight.w400,
                            color: curretTab==3 ?
                            mainColor: textColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

