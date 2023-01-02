import 'package:flutter/material.dart';
import '../const.dart';
import '../screens/homeUI/Customers/add_customers.dart';
import '../screens/homeUI/inventory/add_inventory.dart';
import 'Mytext.dart';

class Widgets {
  static Widget FloatingButton(
    context,
  ) {
    return FloatingActionButton.extended(
      backgroundColor: mainColor,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddCustomer()));
      },
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.add),
          MyText(
            title: 'Add Customers',
            color: Colors.white,
            size: textsize,
          ),
        ],
      ),
    );
  }

  static Widget InventoryFloatingButton(
    context,
  ) {
    return FloatingActionButton.extended(
      backgroundColor: mainColor,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddInventory()));
      },
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.add),
          MyText(
            title: 'Add Inventory',
            color: Colors.white,
            size: textsize,
          ),
        ],
      ),
    );
  }
}
