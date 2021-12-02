import 'package:flutter/material.dart';
import 'package:flutter_travel/constants/color.dart';
import 'package:flutter_travel/constants/text.dart';
import 'package:flutter_travel/data/liste.dart';
import 'package:flutter_travel/page/detay_page.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

ListeController _listeController = Get.put(ListeController());

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
                      'Where would you like to travel?',
                      style: ConstantsText.textStyle24BB,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: ConstantsColor.appColorG.withOpacity(0.6),
                    radius: 30,
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
                  hintText: 'Search',
                  hintStyle: ConstantsText.textStyle16B,
                  suffixIcon: Icon(
                    Icons.search,
                    color: ConstantsColor.appColorG,
                  ),
                ),
                cursorColor: ConstantsColor.appColorB,
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ConstantsColor.appColorG.withOpacity(0.3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 4.0),
                        child: Text(
                          'All',
                          style: ConstantsText.textStyle16B,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ConstantsColor.appColorR.withOpacity(0.8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 4.0),
                        child: Text(
                          'Flight',
                          style: ConstantsText.textStyle16W,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ConstantsColor.appColorG.withOpacity(0.3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 4.0),
                        child: Text(
                          'Cruise',
                          style: ConstantsText.textStyle16B,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ConstantsColor.appColorG.withOpacity(0.3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 4.0),
                        child: Text(
                          'Train',
                          style: ConstantsText.textStyle16B,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ConstantsColor.appColorG.withOpacity(0.3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 4.0),
                        child: Text(
                          'Cars',
                          style: ConstantsText.textStyle16B,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ConstantsColor.appColorG.withOpacity(0.3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 4.0),
                        child: Text(
                          'Motors',
                          style: ConstantsText.textStyle16B,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  itemCount: _listeController.itemList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => DetayPage(
                              index: index,
                              liste: _listeController.itemList,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage(
                              _listeController.itemList[index]['fotograf'],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                _listeController.itemList[index]['sehir'],
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
                                        _listeController.itemList[index]
                                            ['ucret'],
                                    style: ConstantsText.textStyle16B,
                                  ),
                                ),
                              ),
                            ],
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
