import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

/**
 * This function will start circular Loader
 */
showCircular(Color color) async {
  return Get.dialog(
    WillPopScope(
        onWillPop: () async => false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: CircularProgressIndicator(
              color: color,
            
                ))
          ],
        )),
    barrierDismissible: false,
  );
}

/**
 * This function will start facny loader
 */
showWidgetLoading(double height, double width) async {
  return Get.dialog(
    WillPopScope(
        onWillPop: () async => false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Lottie.asset('assets/loader.json',
                    width: width, height: width, fit: BoxFit.contain))
          ],
        )),
    barrierDismissible: false,
  );
}
