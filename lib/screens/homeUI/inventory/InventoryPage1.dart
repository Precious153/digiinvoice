import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/provider/formControllers.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/const%20widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../widgets/InputField.dart';
import '../../../widgets/customBox.dart';

class InventoryPage1 extends StatefulWidget {
  const InventoryPage1({Key? key}) : super(key: key);

  @override
  State<InventoryPage1> createState() => _InventoryPage1State();
}

class _InventoryPage1State extends State<InventoryPage1> {
  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormControllers>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  color: Colors.black,
                  title: 'Inventory',
                  size: headersize,
                ),
                smallspace,
                Center(
                  child: CustomBbox(
                    width: 335,
                    height: 54,
                    radius: BorderRadius.circular(10),
                    shadowcolor: shadowColor.withOpacity(0.2),
                    widget: InputField(
                      hint: 'Search for product and services',
                      inputAction: TextInputAction.done,
                      controller: formProvider.searchController,
                      icon: CustomBbox(
                        width: 30,
                        height: 30,
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
                Align(
                  alignment: Alignment.center,
                  heightFactor: 7,
                  child: MyText(
                    title:
                        'You have`t saved any inventory yet.Do you want to add a product or service?',
                    align: TextAlign.center,
                    color: textColor,
                    size: textsize,
                    weight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Widgets.FloatingButton(context),
      ),
    );
  }
}
