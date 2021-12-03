import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel/constants/color.dart';
import 'package:flutter_travel/constants/text.dart';
import 'package:flutter_travel/controller/main_controller.dart';
import 'package:get/get.dart';

MainController _mainController = Get.find<MainController>();

class DetayPage extends StatelessWidget {
  int index;
  List liste;
  DetayPage({required this.index, required this.liste, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String sehir = liste[index]['sehir'].toString().toLowerCase();
    String ucret = liste[index]['ucret'].toString();
    _mainController.biletUcreti.value = int.parse(ucret);
    _mainController.biletAdedi.value = 0;
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: liste[index]['fotograf'].toString(),
            child: Container(
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
          ),
          Column(
            children: [
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: ConstantsColor.appColorWD,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                height: Get.height * 0.6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: _mainController.aracSecimi.value > 3 ||
                                        _mainController.aracSecimi.value == 0 ||
                                        _mainController.aracSecimi.value == 1
                                    ? ConstantsColor.appColorR.withOpacity(0.8)
                                    : ConstantsColor.appColorW.withOpacity(0.3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0, vertical: 8.0),
                                child: Text(
                                  'Fly',
                                  style: _mainController.aracSecimi.value > 3 ||
                                          _mainController.aracSecimi.value ==
                                              0 ||
                                          _mainController.aracSecimi.value == 1
                                      ? ConstantsText.textStyle16W
                                      : ConstantsText.textStyle16B,
                                ),
                              ),
                            ),
                          ),
                          Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: _mainController.aracSecimi.value == 2
                                    ? ConstantsColor.appColorR.withOpacity(0.8)
                                    : ConstantsColor.appColorW.withOpacity(0.3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0, vertical: 8.0),
                                child: Text(
                                  'Train',
                                  style: _mainController.aracSecimi.value == 2
                                      ? ConstantsText.textStyle16W
                                      : ConstantsText.textStyle16B,
                                ),
                              ),
                            ),
                          ),
                          Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: _mainController.aracSecimi.value == 3
                                    ? ConstantsColor.appColorR.withOpacity(0.8)
                                    : ConstantsColor.appColorW.withOpacity(0.3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0, vertical: 8.0),
                                child: Text(
                                  'Bus',
                                  style: _mainController.aracSecimi.value == 3
                                      ? ConstantsText.textStyle16W
                                      : ConstantsText.textStyle16B,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                          color: ConstantsColor.appColorW,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 24.0, bottom: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: ConstantsColor
                                            .appColorR
                                            .withOpacity(0.8),
                                        radius: 8,
                                        child: CircleAvatar(
                                          backgroundColor:
                                              ConstantsColor.appColorW,
                                          radius: 3,
                                        ),
                                      ),
                                      Text(
                                        ' - - - - - - - - ',
                                        style: ConstantsText.textStyle24G,
                                      ),
                                      Transform.rotate(
                                        angle: 45.555,
                                        child: Icon(
                                          Icons.flight_rounded,
                                          color: ConstantsColor.appColorR
                                              .withOpacity(0.8),
                                        ),
                                      ),
                                      Text(
                                        ' - - - - - - - - ',
                                        style: ConstantsText.textStyle24G,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: ConstantsColor
                                            .appColorB
                                            .withOpacity(0.7),
                                        radius: 8,
                                        child: CircleAvatar(
                                          backgroundColor:
                                              ConstantsColor.appColorW,
                                          radius: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '10:40am',
                                            style: ConstantsText.textStyle16BB,
                                          ),
                                          Text(
                                            '04.26.2021, Tue',
                                            style: ConstantsText.textStyle16B,
                                          )
                                        ],
                                      ),
                                      SizedBox(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '12:40am',
                                            style: ConstantsText.textStyle16BB,
                                          ),
                                          Text(
                                            '04.27.2021, Wed',
                                            style: ConstantsText.textStyle16B,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                          color: ConstantsColor.appColorW,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Text(
                              ' - - - - - - - - - - - - - - - - - - - - - - ',
                              textAlign: TextAlign.justify,
                              style: ConstantsText.textStyle24G,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                          color: ConstantsColor.appColorW,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                          ),
                          color: ConstantsColor.appColorW,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Ticket',
                              style: ConstantsText.textStyle20B,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BouncingWidget(
                                  child: CircleAvatar(
                                    backgroundColor: ConstantsColor.appColorG
                                        .withOpacity(0.3),
                                    radius: 14,
                                    child: Icon(
                                      Icons.remove,
                                      color: ConstantsColor.appColorB
                                          .withOpacity(0.7),
                                      size: 16,
                                    ),
                                  ),
                                  onPressed: () {
                                    _mainController.biletAdedi.value -= 1;
                                  },
                                  duration: Duration(milliseconds: 200),
                                  scaleFactor: 1.5,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 32,
                                  child: Center(
                                    child: Obx(
                                      () => AnimatedFlipCounter(
                                        value: _mainController.biletAdedi.value,
                                        duration: Duration(milliseconds: 500),
                                        textStyle: ConstantsText.textStyle18B,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                BouncingWidget(
                                  child: CircleAvatar(
                                    backgroundColor: ConstantsColor.appColorG
                                        .withOpacity(0.3),
                                    radius: 14,
                                    child: Icon(
                                      Icons.add,
                                      color: ConstantsColor.appColorB
                                          .withOpacity(0.7),
                                      size: 16,
                                    ),
                                  ),
                                  onPressed: () {
                                    _mainController.biletAdedi.value += 1;
                                  },
                                  duration: Duration(milliseconds: 200),
                                  scaleFactor: 1.5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: [
                                  Transform.rotate(
                                    angle: 45,
                                    child: Icon(
                                      Icons.flight,
                                      color: ConstantsColor.appColorR
                                          .withOpacity(0.8),
                                      size: 28,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'American Airlines',
                                    style: ConstantsText.textStyle18B,
                                  ),
                                  Spacer(),
                                  Obx(
                                    () => AnimatedFlipCounter(
                                      value: _mainController.biletUcreti.value *
                                          _mainController.biletAdedi.value,
                                      prefix: '\$',
                                      textStyle: ConstantsText.textStyle20BB,
                                      duration: Duration(milliseconds: 800),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: ConstantsColor.appColorR.withOpacity(0.8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24.0, vertical: 4.0),
                            child: Text(
                              'Buy',
                              style: ConstantsText.textStyle20W,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 40,
            left: 10,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: CircleAvatar(
                backgroundColor: ConstantsColor.appColorW,
                child: Icon(
                  Icons.chevron_left,
                  color: ConstantsColor.appColorR.withOpacity(0.8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
