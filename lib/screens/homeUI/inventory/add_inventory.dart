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
  String? dropdownvalue2;
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
    'Litres',
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
    return Column(
      children: [
        Expanded(
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                title: MyText(
                  title: 'Add Inventory',
                  size: 20,
                  color: navTextColor,
                ),
                backgroundColor: Colors.white,
                elevation: 0,
                bottom: TabBar(
                  unselectedLabelColor: mainColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: mainColor,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: mainColor,
                            width: 2,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Product",
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: mainColor,
                            width: 2,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Service"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  ProductView(context),
                  ServiceView(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  SingleChildScrollView ProductView(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            CustomBbox(
              width: getProportionateScreenWidth(335),
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
              width: getProportionateScreenWidth(335),
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
            productSelectUnitContainer(),
            SizedBox(
              height: getProportionateScreenHeight(88),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => InventoryList()));
              },
              child: CustomBbox(
                height: getProportionateScreenHeight(54),
                width: getProportionateScreenWidth(335),
                color: mainColor,
                radius: BorderRadius.circular(10),
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
    );
  }

  SingleChildScrollView ServiceView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          CustomBbox(
            width: getProportionateScreenWidth(335),
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
            width: getProportionateScreenWidth(335),
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
          serviceSelectUnit(),
          // buildSelectUnitContainer(),
          SizedBox(
            height: getProportionateScreenHeight(88),
          ),
          CustomBbox(
            height: getProportionateScreenHeight(54),
            width: getProportionateScreenWidth(335),
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
    );
  }

  Widget productSelectUnitContainer() {
    return CustomBbox(
      height: getProportionateScreenHeight(57),
      width: getProportionateScreenWidth(335),
      color: white,
      shadowcolor: Color(0xff797979).withOpacity(0.15),
      radius: BorderRadius.circular(12),
      widget: Padding(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15),
        ),
        child: DropdownButton(
          underline: SizedBox.shrink(),
          hint: Text('Select Unit'),
          value: dropdownvalue,
          isExpanded: true,
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(
              () {
                this.dropdownvalue = value!;
              },
            );
          },
        ),
      ),
    );
  }

  Widget serviceSelectUnit() {
    return CustomBbox(
      height: getProportionateScreenHeight(57),
      width: getProportionateScreenWidth(335),
      color: white,
      shadowcolor: Color(0xff797979).withOpacity(0.15),
      radius: BorderRadius.circular(12),
      widget: Padding(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15),
        ),
        child: DropdownButton(
          underline: SizedBox.shrink(),
          hint: Text('Select Unit'),
          value: dropdownvalue2,
          isExpanded: true,
          items: items2.map((String items2) {
            return DropdownMenuItem(
              value: items2,
              child: Text(items2),
            );
          }).toList(),
          onChanged: (String? newvalue) {
            setState(
              () {
                this.dropdownvalue2 = newvalue!;
              },
            );
          },
        ),
      ),
    );
  }

  Widget buildQuantityContainer() {
    return CustomBbox(
      width: getProportionateScreenWidth(335),
      height: getProportionateScreenHeight(54),
      radius: BorderRadius.circular(10),
      shadowcolor: Color(0xff797979).withOpacity(0.15),
      color: white,
      widget: Padding(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(13),
          right: getProportionateScreenWidth(13),
        ),
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
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(Icons.add),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(8),
                ),
                MyText(
                  title: '1',
                  size: 20,
                  weight: FontWeight.w400,
                  color: shadowColor,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(8),
                ),
                Container(
                  height: getProportionateScreenHeight(28),
                  width: getProportionateScreenWidth(28),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.remove,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
