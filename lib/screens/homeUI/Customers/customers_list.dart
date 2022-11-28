import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/models/provider/formControllers.dart';
import 'package:digiinvoice/screens/homeUI/Customers/the_customers.dart';
import 'package:digiinvoice/widgets/InputField.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomersList extends StatefulWidget {
  const CustomersList({Key? key}) : super(key: key);

  @override
  State<CustomersList> createState() => _CustomersListState();
}

class _CustomersListState extends State<CustomersList> {
  TextEditingController search  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormControllers>(context);
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
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
                SizedBox(height: getProportionateScreenHeight(41),),
                StreamBuilder(builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return SizedBox(
                      height: 800,
                      child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return  InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                TheCustomers()
                                ));
                              },
                              child: CustomBbox(
                                color: Colors.white,
                                width: double.infinity,
                                radius: BorderRadius.circular(10),
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
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),



                            ),
                            );
                          }));
                })

              ],
            ),
          ),
        ),
      ),
    );
  }
}
