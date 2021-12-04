import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_travel/constants/color.dart';
import 'package:flutter_travel/constants/text.dart';
import 'package:flutter_travel/controller/main_controller.dart';
import 'package:get/get.dart';

MainController _mainController = Get.find<MainController>();

class CreditCardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CreditCardPageState();
  }
}

class CreditCardPageState extends State<CreditCardPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = 'AD SOYAD';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        color: ConstantsColor.appColorWD,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 400),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      BouncingWidget(
                        onPressed: () {
                          Get.back();
                        },
                        duration: Duration(milliseconds: 200),
                        scaleFactor: 1.5,
                        child: CircleAvatar(
                          backgroundColor:
                              ConstantsColor.appColorR.withOpacity(0.8),
                          child: Icon(
                            Icons.chevron_left,
                            color: ConstantsColor.appColorW,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: Get.width - 130,
                        child: Text(
                          'Ödeme İşlemi',
                          style: ConstantsText.textStyle24B,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              DelayedDisplay(
                delay: Duration(milliseconds: 400),
                child: CreditCardWidget(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView: isCvvFocused,
                  obscureCardNumber: true,
                  obscureCardCvv: true,
                  isHolderNameVisible: true,
                  cardBgColor: Colors.red.shade400,
                  isSwipeGestureEnabled: true,
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {},
                  customCardTypeIcons: <CustomCardTypeIcon>[
                    CustomCardTypeIcon(
                      cardType: CardType.mastercard,
                      cardImage: Image.asset(
                        'assets/images/mastercard.png',
                        height: 48,
                        width: 48,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: DelayedDisplay(
                    delay: Duration(milliseconds: 400),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: ConstantsColor.appColorW,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                            ),
                            child: Column(
                              children: [
                                CreditCardForm(
                                  formKey: formKey,
                                  obscureCvv: true,
                                  obscureNumber: true,
                                  cardNumber: cardNumber,
                                  cvvCode: cvvCode,
                                  isHolderNameVisible: true,
                                  isCardNumberVisible: true,
                                  isExpiryDateVisible: true,
                                  cardHolderName: cardHolderName,
                                  expiryDate: expiryDate,
                                  themeColor: Colors.red,
                                  textColor: Colors.black,
                                  numberValidationMessage:
                                      'Hatalı kart numarası.',
                                  dateValidationMessage:
                                      'Hatalı kart bitiş tarihi.',
                                  cvvValidationMessage:
                                      'Hatalı kart CVV bilgisi.',
                                  cardNumberDecoration: InputDecoration(
                                    labelText: 'Kart Numarası',
                                    hintText: 'XXXX XXXX XXXX XXXX',
                                    hintStyle: ConstantsText.textStyle18B,
                                    labelStyle: ConstantsText.textStyle18B,
                                    filled: true,
                                    fillColor: Colors.red.withOpacity(0.15),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide.none,
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  expiryDateDecoration: InputDecoration(
                                    hintStyle: ConstantsText.textStyle18B,
                                    labelStyle: ConstantsText.textStyle18B,
                                    filled: true,
                                    fillColor: Colors.red.withOpacity(0.15),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide.none,
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                    labelText: 'Bitiş Tarihi',
                                    hintText: 'XX/XX',
                                  ),
                                  cvvCodeDecoration: InputDecoration(
                                    hintStyle: ConstantsText.textStyle18B,
                                    labelStyle: ConstantsText.textStyle18B,
                                    filled: true,
                                    fillColor: Colors.red.withOpacity(0.15),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide.none,
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                    labelText: 'CVV',
                                    hintText: 'XXX',
                                  ),
                                  cardHolderDecoration: InputDecoration(
                                    hintStyle: ConstantsText.textStyle18B,
                                    labelStyle: ConstantsText.textStyle18B,
                                    filled: true,
                                    fillColor: Colors.red.withOpacity(0.15),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide.none,
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                    labelText: 'Ad Soyad',
                                  ),
                                  onCreditCardModelChange:
                                      onCreditCardModelChange,
                                ),
                                SizedBox(
                                  height: 20,
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
                              color: ConstantsColor.appColorW,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Bilet Adedi',
                                        style: ConstantsText.textStyle16BB,
                                      ),
                                      Text(
                                        'Bilet Birim Fiyatı',
                                        style: ConstantsText.textStyle16BB,
                                      ),
                                      Text(
                                        'KDV (%18)',
                                        style: ConstantsText.textStyle16BB,
                                      ),
                                      Text(
                                        'Tutar',
                                        style: ConstantsText.textStyle16BB,
                                      ),
                                      Text(
                                        'Toplam Tutar',
                                        style: ConstantsText.textStyle16BB,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Text(
                                        _mainController.biletAdedi.value
                                            .toString(),
                                        style: ConstantsText.textStyle16BB,
                                      ),
                                      Text(
                                        '\$${_mainController.biletUcreti.value}',
                                        style: ConstantsText.textStyle16BB,
                                      ),
                                      Text(
                                        '\$${((_mainController.biletAdedi.value * _mainController.biletUcreti.value) * 18) / 100}',
                                        style: ConstantsText.textStyle16BB,
                                      ),
                                      Text(
                                        '\$${_mainController.biletAdedi.value * _mainController.biletUcreti.value}',
                                        style: ConstantsText.textStyle16BB,
                                      ),
                                      Text(
                                        '\$${(_mainController.biletAdedi.value * _mainController.biletUcreti.value) + ((_mainController.biletAdedi.value * _mainController.biletUcreti.value) * 18) / 100}',
                                        style: ConstantsText.textStyle16BB,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
                          BouncingWidget(
                            duration: Duration(milliseconds: 200),
                            scaleFactor: 1.5,
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                print('valid!');
                              } else {
                                print('invalid!');
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: ConstantsColor.appColorW,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: ConstantsColor.appColorR
                                              .withOpacity(0.8),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 24.0, vertical: 8.0),
                                          child: Text(
                                            'Satın Al',
                                            style: ConstantsText.textStyle20W,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
