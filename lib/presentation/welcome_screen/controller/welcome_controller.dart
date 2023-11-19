import 'package:anderson_s_application1/core/app_export.dart';import 'package:anderson_s_application1/presentation/welcome_screen/models/welcome_model.dart';/// A controller class for the WelcomeScreen.
///
/// This class manages the state of the WelcomeScreen, including the
/// current welcomeModelObj
class WelcomeController extends GetxController {Rx<WelcomeModel> welcomeModelObj = WelcomeModel().obs;

@override void onReady() { Future.delayed(const Duration(milliseconds: 3000), (){
Get.offNamed(AppRoutes.onboardingTwoScreen,);}); } 
 }
