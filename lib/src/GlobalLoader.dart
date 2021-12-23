import 'package:get/get.dart';
import 'package:global_loader/src/LoadingWidget.dart';


class GlobalLoader extends GetxController {
  String fancyLoader = 'assets/fancy_loader.json';
  String lazyLoader = 'assets/lazy_loading.json';
  String smoothLoader = 'assets/smooth_loader.json';
  String spinLoader = 'assets/spin_loading.json';
  String spinningCircularLoader = 'assets/spinning_circle.json';
  bool dialogEnable = false;

  void startCircularLoader(color,double height, double width) {
    showCircularDialog(color,height, width);
    dialogEnable = true;
    update();
  }

  void startFancyLoader(double height, double width) {
    showWidgetLoadingDialog(fancyLoader, height, width);
    dialogEnable = true;
    update();
  }

  void startLazyLoader(double height, double width) {
    showWidgetLoadingDialog(lazyLoader, height, width);
    dialogEnable = true;
    update();
  }

  void startSmoothLoader(double height, double width) {
    showWidgetLoadingDialog(smoothLoader, height, width);
    dialogEnable = true;
    update();
  }

  void startSpinLoader(double height, double width) {
    showWidgetLoadingDialog(spinLoader, height, width);
    dialogEnable = true;
    update();
  }

  void startSpinningCircularLoader(double height, double width) {
    showWidgetLoadingDialog(spinningCircularLoader, height, width);
    dialogEnable = true;
    update();
  }

  void stop() {
    if (dialogEnable) {
      Get.back();
      dialogEnable=false;
      update();
    }
  }
}
