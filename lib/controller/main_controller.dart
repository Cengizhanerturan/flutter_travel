import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var aracSecimi = 0.obs;
  var biletAdedi = 1.obs;
  var biletUcreti = 0.obs;
  List itemList = [
    {
      "sehir": "Amsterdam",
      "fotograf": "assets/images/amsterdam-1.jpg",
      "ucret": "100"
    },
    {"sehir": "Bali", "fotograf": "assets/images/bali-1.jpg", "ucret": "110"},
    {
      "sehir": "Berlin",
      "fotograf": "assets/images/berlin-1.jpg",
      "ucret": "120"
    },
    {
      "sehir": "İspanya",
      "fotograf": "assets/images/ispanya-1.jpg",
      "ucret": "130"
    },
    {"sehir": "Paris", "fotograf": "assets/images/paris-1.jpg", "ucret": "140"},
    {"sehir": "Roma", "fotograf": "assets/images/roma-1.jpg", "ucret": "150"},
  ];
}
