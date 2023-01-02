import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/models/provider/formControllers.dart';
import 'package:digiinvoice/screens/homeUI/Customers/customerInfo.dart';
import 'package:digiinvoice/screens/homeUI/inventory/edit_inventory.dart';
import 'package:digiinvoice/widgets/InputField.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Inventory.dart';

class InventoryList extends StatefulWidget {
  const InventoryList({Key? key}) : super(key: key);

  @override
  State<InventoryList> createState() => _InventoryListState();
}

class _InventoryListState extends State<InventoryList> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormControllers>(context);
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(32),
                ),
                MyText(
                  title: 'Inventory',
                  size: 20,
                  color: navTextColor,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
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
                        padding: const EdgeInsets.only(
                            right: 5.0, top: 5, bottom: 5),
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
                SizedBox(
                  height: getProportionateScreenHeight(41),
                ),
                StreamBuilder(builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return SizedBox(
                      height: 800,
                      child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CustomersInfo()));
                              },
                              child: CustomBbox(
                                color: Colors.white,
                                width: double.infinity,
                                radius: BorderRadius.circular(10),
                                height: getProportionateScreenHeight(66),
                                widget: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height:
                                                getProportionateScreenHeight(
                                                    10),
                                          ),
                                          MyText(
                                              title:
                                                  'A pack of plaintain chips',
                                              size: 14,
                                              weight: FontWeight.w400,
                                              color: navTextColor,
                                              align: TextAlign.center),
                                          SizedBox(
                                            height:
                                                getProportionateScreenHeight(8),
                                          ),
                                          MyText(
                                              title: '#2,500',
                                              size: 12,
                                              weight: FontWeight.w400,
                                              color: mainColor,
                                              align: TextAlign.center),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                    context: context,
                                                    builder: (context) =>
                                                        Container(
                                                      height:
                                                          getProportionateScreenHeight(
                                                              271),
                                                      width: double.infinity,
                                                      color: Colors.white,
                                                      child: Column(
                                                        children: [
                                                          SizedBox(
                                                            height:
                                                                getProportionateScreenHeight(
                                                                    24),
                                                          ),
                                                          MyText(
                                                            title:
                                                                'Are you sure you want to\ndelete this customer?',
                                                            color: navTextColor,
                                                            align: TextAlign
                                                                .center,
                                                            size: 20,
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                getProportionateScreenHeight(
                                                                    16),
                                                          ),
                                                          MyText(
                                                            title:
                                                                'You will not be able to recover this\ndetails afterwards',
                                                            align: TextAlign
                                                                .center,
                                                            color: textColor,
                                                            size: 12,
                                                            weight:
                                                                FontWeight.w400,
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                getProportionateScreenHeight(
                                                                    24),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              Navigator.pushReplacement(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              InventoryPage()));
                                                            },
                                                            child: CustomBbox(
                                                              color: mainColor,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              width:
                                                                  getProportionateScreenWidth(
                                                                      128),
                                                              height:
                                                                  getProportionateScreenHeight(
                                                                      45),
                                                              widget: Center(
                                                                child: MyText(
                                                                  color: Colors
                                                                      .white,
                                                                  size:
                                                                      textsize,
                                                                  title:
                                                                      'Yes, delete',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                getProportionateScreenHeight(
                                                                    16),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: MyText(
                                                              title: 'Cancel',
                                                              color: textColor,
                                                              size: 14,
                                                              weight: FontWeight
                                                                  .w400,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: CustomBbox(
                                                    height:
                                                        getProportionateScreenHeight(
                                                            28),
                                                    width:
                                                        getProportionateScreenWidth(
                                                            28),
                                                    color: mainColor,
                                                    widget: Center(
                                                      child: Icon(
                                                        Icons
                                                            .delete_outline_outlined,
                                                        color: white,
                                                        size: 20,
                                                      ),
                                                    )),
                                              ),
                                              SizedBox(
                                                width:
                                                    getProportionateScreenWidth(
                                                        16),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              EditInventory()));
                                                },
                                                child: CustomBbox(
                                                  height:
                                                      getProportionateScreenHeight(
                                                          28),
                                                  width:
                                                      getProportionateScreenWidth(
                                                          28),
                                                  color: mainColor,
                                                  widget: Center(
                                                      child: Icon(
                                                    Icons.edit,
                                                    size: 20,
                                                    color: white,
                                                  )),
                                                ),
                                              ),
                                            ],
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
