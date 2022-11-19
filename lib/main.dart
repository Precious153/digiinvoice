import 'package:digiinvoice/screens/customers/add_customers.dart';
import 'package:digiinvoice/screens/customers/edit_customers.dart';
import 'package:digiinvoice/screens/customers/the_customers.dart';
import 'package:digiinvoice/screens/home/button_nav.dart';
import 'package:digiinvoice/screens/home/customers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/onboarding/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const Splash(),
        'ButtonNav':(context)=> ButtonNav(),
        'AddCustomer':(context)=> AddCustomer(),
        'EditCustomers':(context)=> EditCustomers(),
        'Customers':(context)=> Customers(),
        'TheCustomers':(context)=> TheCustomers(),
      },
    );
  }
}
