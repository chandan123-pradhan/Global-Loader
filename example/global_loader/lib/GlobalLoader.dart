import 'package:get/get.dart';
import 'package:global_loader/Widget/LoadingWidget.dart';

class GlobalLoader extends GetxController {
 
 
  bool dialogEnable = false;


/**
 * It will start circular Loader.
 * [color]: pass loader color
 */
  void startCircularLoader(color) {
    showCircular(color);
    dialogEnable = true;
    update();
  }


/**
 * It will start circular Loader.
 * [height] : pass loader height.
 * [width] : Pass loader width
 */
  void startFancyLoader(double height, double width) {
    showWidgetLoading(height, width);
    dialogEnable = true;
    update();
  }

 


/**
 * This function will stop/hide current loader.
 */
  void stop() {
    if (dialogEnable) {
      Get.back();
      dialogEnable=false;
      update();
    }
  }
}
