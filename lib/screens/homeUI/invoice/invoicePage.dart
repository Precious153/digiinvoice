import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:flutter/material.dart';
import '../BottomNav.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({
    Key? key,
  }) : super(key: key);

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      backgroundColor: scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              MyText(
                title: 'Invoice',
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
