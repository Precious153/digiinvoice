import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/helpers/size_config.dart';
import 'package:digiinvoice/screens/homeUI/inventory/inventory_list.dart';
import 'package:digiinvoice/widgets/InputField.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/customBox.dart';
import 'package:flutter/material.dart';

class AddInventory extends StatefulWidget {
  const AddInventory({Key? key}) : super(key: key);

  @override
  State<AddInventory> createState() => _AddInventoryState();
}

class _AddInventoryState extends State<AddInventory> {
  String? dropdownvalue;

  late TabController _tabController;
  @override


  var items = [
    'Pack',
    'Box',
    'Pair',
    'Bag',
    'Pcs',
    'Grams',
    'Kg',
    'Litres'
    'Bundles',
    'Carton',
    'Sachets',
    'Ft',
    'Dz'
  ];
  var items2 = [
    'Minutes',
    'Sessions',
    'Hours',
    'Day',
    'Week',
    'Month',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(21),
              right: getProportionateScreenWidth(21)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      backgroundColor: Color(0XFFE5E5E5),
                      appBar: AppBar(
                        title:MyText(
                          title: 'Add Inventory',
                          size: 20,
                          color: navTextColor,
                        ),
                        backgroundColor: Color(0XFFE5E5E5),
                        elevation: 0,
                        bottom: TabBar(
                            unselectedLabelColor: mainColor,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: mainColor),
                            tabs: [
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.
                                      all(color: mainColor, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Product"),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.
                                      all(color: mainColor, width: 1)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Service"),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      body: TabBarView(children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: getProportionateScreenHeight(20),),

                              CustomBbox(
                                width: double.infinity,
                                height: getProportionateScreenHeight(54),
                                radius: BorderRadius.circular(10),
                                shadowcolor: shadowColor.withOpacity(0.2),
                                widget: InputField(
                                  label: 'Product Name',
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(16),
                              ),
                              CustomBbox(
                                width: double.infinity,
                                height: getProportionateScreenHeight(54),
                                radius: BorderRadius.circular(10),
                                shadowcolor: shadowColor.withOpacity(0.2),
                                widget: InputField(
                                  label: 'Selling Price',
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(16),
                              ),
                              buildQuantityContainer(),
                              SizedBox(
                                height: getProportionateScreenHeight(16),
                              ),
                              buildSelectUnitContainer(),
                              SizedBox(
                                height: getProportionateScreenHeight(88),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>InventoryList()));
                                },
                                child: CustomBbox(
                                  height: getProportionateScreenHeight(54),
                                  width: double.infinity,
                                  color: mainColor,
                                  widget: Center(
                                    child: MyText(
                                      title: 'Save',
                                      size: 14,
                                      weight: FontWeight.w600,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: getProportionateScreenHeight(20),),

                              CustomBbox(
                                width: double.infinity,
                                height: getProportionateScreenHeight(54),
                                radius: BorderRadius.circular(10),
                                shadowcolor: shadowColor.withOpacity(0.2),
                                widget: InputField(
                                  label: 'Service Name',
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(16),
                              ),
                              CustomBbox(
                                width: double.infinity,
                                height: getProportionateScreenHeight(54),
                                radius: BorderRadius.circular(10),
                                shadowcolor: shadowColor.withOpacity(0.2),
                                widget: InputField(
                                  label: 'Service Name',
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(16),
                              ),
                              buildSelectUnitContainer(),
                              SizedBox(
                                height: getProportionateScreenHeight(88),
                              ),
                              CustomBbox(
                                height: getProportionateScreenHeight(54),
                                width: double.infinity,
                                color: mainColor,
                                widget: Center(
                                  child: MyText(
                                    title: 'Save',
                                    size: 14,
                                    weight: FontWeight.w600,
                                    color: white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    )),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Container buildSelectUnitContainer() {
    return Container(
                height: getProportionateScreenHeight(57),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child:Padding(
                  padding:  EdgeInsets.only(left: getProportionateScreenWidth(15),
                  right: getProportionateScreenWidth(15)),
                  child: DropdownButton(
                    hint: Text('Select Unit'),
                    value: dropdownvalue,
                    isExpanded: true,
                    items: items2.map((String items2) {
                      return DropdownMenuItem(
                        value: items2,
                        child: Text(items2),
                        // Text(items),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        this.dropdownvalue  = value!;
                      });

                    },

                  ),
                )
            );
  }

  Container buildQuantityContainer() {
    return Container(
              height: getProportionateScreenHeight(54),
              width:  double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: white
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: getProportionateScreenWidth(13),
                right: getProportionateScreenWidth(13)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      title: 'Quantity',
                      size: 14,
                      weight: FontWeight.w400,
                      color: shadowColor,
                    ),
                    Row(
                      children: [
                        Container(
                          height: getProportionateScreenHeight(28),
                          width: getProportionateScreenWidth(28),
                          decoration: BoxDecoration(
                            border: Border.all(color: mainColor),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child:Icon(
                              Icons.add
                            )
                          ),
                        ),
                        SizedBox(width: getProportionateScreenWidth(8),),
                        MyText(
                          title: '1',
                          size: 20,
                          weight: FontWeight.w400,
                          color: shadowColor,
                        ),
                        SizedBox(width: getProportionateScreenWidth(8),),
                        Container(
                          height: getProportionateScreenHeight(28),
                          width: getProportionateScreenWidth(28),
                          decoration: BoxDecoration(
                            border: Border.all(color: mainColor),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child:Icon(
                                  Icons.add
                              )
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            );
  }

  Row buildProductRow() {
    return Row(
              children: [
                Container(
                  height: getProportionateScreenHeight(45),
                  width: getProportionateScreenWidth(99),
                  decoration: BoxDecoration(
                    border: Border.all(color: mainColor),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: MyText(
                      title: 'Product',
                      size: 14,
                      color: mainColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Container(
                  height: getProportionateScreenHeight(45),
                  width: getProportionateScreenWidth(99),
                  decoration: BoxDecoration(
                    border: Border.all(color: mainColor),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: MyText(
                      title: 'Service',
                      size: 14,
                      color: mainColor,
                    ),
                  ),
                ),
              ],
            );
  }
}
