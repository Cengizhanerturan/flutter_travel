import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel/constants/color.dart';
import 'package:flutter_travel/constants/text.dart';
import 'package:flutter_travel/controller/main_controller.dart';
import 'package:flutter_travel/page/credit_card_pade.dart';
import 'package:get/get.dart';
import 'package:card_swiper/card_swiper.dart';

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
    debugPrint('Bilet ucreti: ' + _mainController.biletUcreti.value.toString());
    debugPrint('Bilet adedi: ' + _mainController.biletAdedi.value.toString());
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: liste[index]['fotograf'].toString(),
            child: Container(
              height: 360,
              child: Swiper(
                itemCount: 3,
                autoplay: true,
                autoplayDelay: 10000,
                onTap: (tapIndex) {},
                onIndexChanged: (changedIndex) {},
                pagination: SwiperPagination(
                  margin: EdgeInsets.only(bottom: Get.height * 0.0865),
                  builder: DotSwiperPaginationBuilder(
                    activeColor: ConstantsColor.appColorR.withOpacity(0.8),
                  ),
                ),
                itemBuilder: (BuildContext context, index) {
                  return Image.asset(
                    'assets/images/${sehir}-${index + 1}.jpg',
                    fit: BoxFit.cover,
                  );
                },
              ),
              /* child: ListView(
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
              ), */
            ),
          ),
          DelayedDisplay(
            delay: Duration(milliseconds: 400),
            child: Column(
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
                              () => BouncingWidget(
                                onPressed: () {
                                  _mainController.aracSecimi.value = 1;
                                },
                                duration: Duration(milliseconds: 200),
                                scaleFactor: 1.5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: _mainController.aracSecimi.value >
                                                3 ||
                                            _mainController.aracSecimi.value ==
                                                0 ||
                                            _mainController.aracSecimi.value ==
                                                1
                                        ? ConstantsColor.appColorR
                                            .withOpacity(0.8)
                                        : ConstantsColor.appColorW,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0, vertical: 8.0),
                                    child: Text(
                                      'U??ak',
                                      style: _mainController.aracSecimi.value >
                                                  3 ||
                                              _mainController
                                                      .aracSecimi.value ==
                                                  0 ||
                                              _mainController
                                                      .aracSecimi.value ==
                                                  1
                                          ? ConstantsText.textStyle16W
                                          : ConstantsText.textStyle16B,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Obx(
                              () => BouncingWidget(
                                onPressed: () {
                                  _mainController.aracSecimi.value = 2;
                                },
                                duration: Duration(milliseconds: 200),
                                scaleFactor: 1.5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: _mainController.aracSecimi.value == 2
                                        ? ConstantsColor.appColorR
                                            .withOpacity(0.8)
                                        : ConstantsColor.appColorW,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0, vertical: 8.0),
                                    child: Text(
                                      'Tren',
                                      style:
                                          _mainController.aracSecimi.value == 2
                                              ? ConstantsText.textStyle16W
                                              : ConstantsText.textStyle16B,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Obx(
                              () => BouncingWidget(
                                onPressed: () {
                                  _mainController.aracSecimi.value = 3;
                                },
                                duration: Duration(milliseconds: 200),
                                scaleFactor: 1.5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: _mainController.aracSecimi.value == 3
                                        ? ConstantsColor.appColorR
                                            .withOpacity(0.8)
                                        : ConstantsColor.appColorW,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0, vertical: 8.0),
                                    child: Text(
                                      'Otob??s',
                                      style:
                                          _mainController.aracSecimi.value == 3
                                              ? ConstantsText.textStyle16W
                                              : ConstantsText.textStyle16B,
                                    ),
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
                                padding: const EdgeInsets.only(
                                    top: 24.0, bottom: 8.0),
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
                                              '10:40',
                                              style:
                                                  ConstantsText.textStyle16BB,
                                            ),
                                            Text(
                                              '26.06.2021, Sal??',
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
                                              '12:40',
                                              style:
                                                  ConstantsText.textStyle16BB,
                                            ),
                                            Text(
                                              '27.04.2021, ??ar??amba',
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
                                'Bilet Adet',
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
                                          value:
                                              _mainController.biletAdedi.value,
                                          duration: Duration(milliseconds: 400),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
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
                                      'T??rk Hava Yolar??',
                                      style: ConstantsText.textStyle18B,
                                    ),
                                    Spacer(),
                                    Obx(
                                      () => AnimatedFlipCounter(
                                        value: _mainController
                                                .biletUcreti.value *
                                            _mainController.biletAdedi.value,
                                        prefix: '\$',
                                        textStyle: ConstantsText.textStyle20BB,
                                        duration: Duration(milliseconds: 400),
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
                        BouncingWidget(
                          onPressed: () {
                            Get.to(() => CreditCardPage());
                          },
                          duration: Duration(milliseconds: 200),
                          scaleFactor: 1.5,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: ConstantsColor.appColorR.withOpacity(0.8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 8.0),
                              child: Text(
                                'Sat??n Al',
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
          ),
          Positioned(
            top: 40,
            left: 10,
            child: DelayedDisplay(
              delay: Duration(milliseconds: 400),
              child: BouncingWidget(
                onPressed: () {
                  Get.back();
                },
                duration: Duration(milliseconds: 200),
                scaleFactor: 1.5,
                child: CircleAvatar(
                  backgroundColor: ConstantsColor.appColorW,
                  child: Icon(
                    Icons.chevron_left,
                    color: ConstantsColor.appColorR.withOpacity(0.8),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
