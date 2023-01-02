import 'package:digiinvoice/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/helpers/size_config.dart';
import '../../../models/provider/formControllers.dart';
import '../../../widgets/InputField.dart';
import '../../../widgets/Mytext.dart';
import '../../../widgets/const widgets.dart';
import '../../../widgets/customBox.dart';
import '../BottomNav.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormControllers>(context);
    SizeConfig.init(context);

    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      backgroundColor: scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyText(
                color: Colors.black,
                title: 'Inventory',
                size: headersize,
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
                  hint: 'Search for product and services',
                  inputAction: TextInputAction.done,
                  controller: formProvider.customerSearchController,
                  icon: Padding(
                    padding:
                        const EdgeInsets.only(right: 5.0, top: 5, bottom: 5),
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
              formProvider.customerName.text.isEmpty
                  ? Padding(
                      padding: EdgeInsets.only(top: 200),
                      child: MyText(
                        title:
                            'You have`t saved any inventory yet.Do you want to add a product or service?',
                        align: TextAlign.center,
                        color: textColor,
                        size: textsize,
                        weight: FontWeight.w400,
                      ),
                    )
                  : StreamBuilder(
                      builder: (BuildContext context,
                          AsyncSnapshot<dynamic> snapshot) {
                        return Expanded(
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           CustomersInfo()),
                                  // );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                                        children: [
                                          CustomBbox(
                                            height:
                                                getProportionateScreenHeight(
                                              28,
                                            ),
                                            width:
                                                getProportionateScreenWidth(28),
                                            shapes: BoxShape.circle,
                                            color: mainColor,
                                            widget: Center(
                                              child: MyText(
                                                title: formProvider
                                                    .customerName.text[0],
                                                color: white,
                                                weight: FontWeight.w400,
                                                size: 14,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: getProportionateScreenWidth(
                                              15,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height:
                                                    getProportionateScreenHeight(
                                                  10,
                                                ),
                                              ),
                                              MyText(
                                                title: formProvider
                                                    .customerName.text,
                                                size: 14,
                                                weight: FontWeight.w400,
                                                color: navTextColor,
                                                align: TextAlign.center,
                                              ),
                                              SizedBox(
                                                height:
                                                    getProportionateScreenHeight(
                                                        8),
                                              ),
                                              MyText(
                                                title: formProvider
                                                    .customerPhone.text,
                                                size: 12,
                                                weight: FontWeight.w400,
                                                color: textColor,
                                                align: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
      floatingActionButton: Widgets.InventoryFloatingButton(context),
    );
  }
}
