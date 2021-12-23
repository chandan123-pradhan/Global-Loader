
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';



showCircularDialog(Color color,height, width) async {
  return Get.dialog(
    WillPopScope(
        onWillPop: () async => false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:CircularProgressIndicator(
                color: color,
              )
            )
          ],
        )),
    barrierDismissible: false,
  );

  
}


showWidgetLoadingDialog(widgetName,double height,double width) async {
  return Get.dialog(
    WillPopScope(
        onWillPop: () async => false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
             child:Lottie.asset(widgetName,
      width: width, height:width, fit: BoxFit.contain)
            )
          ],
        )),
    barrierDismissible: false,
  );

  
}


