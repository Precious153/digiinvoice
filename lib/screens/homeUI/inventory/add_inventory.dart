import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class AddInventory extends StatefulWidget {
  const AddInventory({Key? key}) : super(key: key);

  @override
  State<AddInventory> createState() => _AddInventoryState();
}

class _AddInventoryState extends State<AddInventory> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        animationDuration: Duration(seconds: 2),
        child: Scaffold(
          backgroundColor: scaffoldColor,
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text(
                  'Add Inventory',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TabBar(
                  tabs: [
                    MyText(
                      title: 'Product',
                      weight: FontWeight.w400,
                      size: textsize,
                    ),
                    MyText(
                      title: 'Service',
                      weight: FontWeight.w400,
                      size: textsize,
                    ),
                  ],
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: mainColor,
                      width: 3,
                    ), // Creates border
                  ),
                  unselectedLabelColor: Colors.blueGrey,
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.blue,
                  indicatorWeight: 1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
