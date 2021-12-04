import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel/constants/color.dart';
import 'package:flutter_travel/constants/text.dart';
import 'package:flutter_travel/controller/main_controller.dart';
import 'package:flutter_travel/page/detay_page.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

MainController _mainController = Get.put(MainController());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Nereye seyahat etmek istersin?',
                      style: ConstantsText.textStyle24BB,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: ConstantsColor.appColorG.withOpacity(0.6),
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profil.jpeg'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: ConstantsColor.appColorG.withOpacity(0.2),
                  hintText: 'Ara',
                  hintStyle: ConstantsText.textStyle16B,
                  suffixIcon: Icon(
                    Icons.search,
                    color: ConstantsColor.appColorG,
                  ),
                ),
                cursorColor: ConstantsColor.appColorB,
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        Obx(
                          () => BouncingWidget(
                            onPressed: () {
                              _mainController.aracSecimi.value = 0;
                            },
                            duration: Duration(milliseconds: 200),
                            scaleFactor: 1.5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: _mainController.aracSecimi.value == 0
                                    ? ConstantsColor.appColorR.withOpacity(0.8)
                                    : ConstantsColor.appColorG.withOpacity(0.3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0, vertical: 4.0),
                                child: Text(
                                  'Hepsi',
                                  style: _mainController.aracSecimi.value == 0
                                      ? ConstantsText.textStyle16W
                                      : ConstantsText.textStyle16B,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
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
                                color: _mainController.aracSecimi.value == 1
                                    ? ConstantsColor.appColorR.withOpacity(0.8)
                                    : ConstantsColor.appColorG.withOpacity(0.3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0, vertical: 4.0),
                                child: Text(
                                  'Uçak',
                                  style: _mainController.aracSecimi.value == 1
                                      ? ConstantsText.textStyle16W
                                      : ConstantsText.textStyle16B,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
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
                                    ? ConstantsColor.appColorR.withOpacity(0.8)
                                    : ConstantsColor.appColorG.withOpacity(0.3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0, vertical: 4.0),
                                child: Text(
                                  'Tren',
                                  style: _mainController.aracSecimi.value == 2
                                      ? ConstantsText.textStyle16W
                                      : ConstantsText.textStyle16B,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
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
                                    ? ConstantsColor.appColorR.withOpacity(0.8)
                                    : ConstantsColor.appColorG.withOpacity(0.3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0, vertical: 4.0),
                                child: Text(
                                  'Otobüs',
                                  style: _mainController.aracSecimi.value == 3
                                      ? ConstantsText.textStyle16W
                                      : ConstantsText.textStyle16B,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Obx(
                          () => BouncingWidget(
                            onPressed: () {
                              _mainController.aracSecimi.value = 4;
                            },
                            duration: Duration(milliseconds: 200),
                            scaleFactor: 1.5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: _mainController.aracSecimi.value == 4
                                    ? ConstantsColor.appColorR.withOpacity(0.8)
                                    : ConstantsColor.appColorG.withOpacity(0.3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0, vertical: 4.0),
                                child: Text(
                                  'Gemi',
                                  style: _mainController.aracSecimi.value == 4
                                      ? ConstantsText.textStyle16W
                                      : ConstantsText.textStyle16B,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  itemCount: _mainController.itemList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.to(
                          () => DetayPage(
                              index: index, liste: _mainController.itemList),
                        );
                      },
                      child: Hero(
                        tag: _mainController.itemList[index]['fotograf']
                            .toString(),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: ConstantsColor.appColorR.withOpacity(0.8),
                            image: DecorationImage(
                              image: AssetImage(
                                _mainController.itemList[index]['fotograf'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 16.0),
                            child: Material(
                              type: MaterialType.transparency,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    _mainController.itemList[index]['sehir'],
                                    style: ConstantsText.textStyle16WB,
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: ConstantsColor.appColorW,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0, vertical: 4.0),
                                      child: Text(
                                        '\$' +
                                            _mainController.itemList[index]
                                                ['ucret'],
                                        style: ConstantsText.textStyle16B,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return StaggeredTile.count(2, index.isEven ? 3 : 2);
                  },
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
