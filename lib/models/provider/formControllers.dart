import 'package:flutter/material.dart';

class FormControllers extends ChangeNotifier {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _customerSearchController = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _businessName = TextEditingController();
  final TextEditingController _reEnterPassword = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _customer_name = TextEditingController();
  final TextEditingController _customer_email = TextEditingController();
  final TextEditingController _customer_phone = TextEditingController();
  final TextEditingController _customer_address = TextEditingController();
  final TextEditingController _customer_info = TextEditingController();

  TextEditingController get searchController => _searchController;
  TextEditingController get customerName => _customer_name;
  TextEditingController get customerEmail => _customer_email;
  TextEditingController get customerPhone => _customer_phone;
  TextEditingController get customerAddress => _customer_address;
  TextEditingController get customerInfo => _customer_info;
  TextEditingController get customerSearchController => _customerSearchController;
  TextEditingController get password => _password;
  TextEditingController get reEnterPassword => _reEnterPassword;
  TextEditingController get email => _email;
  TextEditingController get businessName => _businessName;
  TextEditingController get phoneNumber => _phoneNumber;

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
