import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/models/provider/formControllers.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:digiinvoice/widgets/const%20widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../widgets/InputField.dart';
import '../../../widgets/customBox.dart';

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
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0, left: 20, right: 20),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
