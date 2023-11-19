import 'package:anderson_s_application1/core/app_export.dart';import 'package:anderson_s_application1/presentation/security_screen/models/security_model.dart';/// A controller class for the SecurityScreen.
///
/// This class manages the state of the SecurityScreen, including the
/// current securityModelObj
class SecurityController extends GetxController {Rx<SecurityModel> securityModelObj = SecurityModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

Rx<bool> isSelectedSwitch2 = false.obs;

 }
