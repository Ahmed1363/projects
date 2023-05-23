import 'package:flutter/material.dart';
import 'package:pric/navigator/one.dart';
import 'package:pric/test.dart';
import 'package:pric/navigator/two.dart';

import 'scroll.dart';
import 'searchDelegate.dart';
import 'showmodalButtonsheet.dart';
import 'slider.dart';
import 'view/Invoices.dart';
import 'view/Reports.dart';

main() {
  // ignore: prefer_const_constructors
  runApp(app());
}

// ignore: camel_case_types
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Invoices(),
        debugShowCheckedModeBanner: false,
        routes: {
          "one": (context) => One(),
          "home": (context) => Test(),
          "tow": (context) => Tow(),
          "slid": (context) => Slid(),
          "scorllcont": (context) => Scroll(),
          "show": (context) => show(),
          "searchDelegate": (context) => seerchDelegate(),
        });
  }
}
