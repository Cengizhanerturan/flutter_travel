import 'package:flutter/material.dart';
import 'package:flutter_travel/constants/color.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ConstantsColor.appColorW.withOpacity(0.8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Center(
          child: Container(
            width: 40,
            height: 40,
            child: CircularProgressIndicator(
              color: ConstantsColor.appColorP,
            ),
          ),
        ),
      ),
    );
  }
}
