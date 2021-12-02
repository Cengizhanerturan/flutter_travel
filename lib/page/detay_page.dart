import 'package:flutter/material.dart';
import 'package:flutter_travel/data/liste.dart';
import 'package:get/get.dart';

class DetayPage extends StatelessWidget {
  int index;
  List liste;
  DetayPage({required this.index, required this.liste, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String sehir = liste[index]['sehir'].toString().toLowerCase();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: Get.width,
                  child: Image(
                    image: AssetImage('assets/images/${sehir}-1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: Get.width,
                  child: Image(
                    image: AssetImage('assets/images/${sehir}-2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: Get.width,
                  child: Image(
                    image: AssetImage('assets/images/${sehir}-3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                height: Get.height * 0.6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
