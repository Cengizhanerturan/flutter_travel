import 'package:flutter/material.dart';
import 'package:flutter_travel/page/credit_card_pade.dart';
import 'package:flutter_travel/page/detay_page.dart';
import 'package:flutter_travel/page/home_page.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.zoom,
      transitionDuration: Duration(milliseconds: 400),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}
