import 'package:destini/controller/splashScreenController.dart';
import 'package:destini/controller/story_brain.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoryBrain());
    //Get.put(() => StoryBrain());

    //Get.lazyPut<StoryBrain>(() => StoryBrain());
    // Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  }
}
