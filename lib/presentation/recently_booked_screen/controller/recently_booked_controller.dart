import 'package:anderson_s_application1/core/app_export.dart';import 'package:anderson_s_application1/presentation/recently_booked_screen/models/recently_booked_model.dart';/// A controller class for the RecentlyBookedScreen.
///
/// This class manages the state of the RecentlyBookedScreen, including the
/// current recentlyBookedModelObj
class RecentlyBookedController extends GetxController {Rx<RecentlyBookedModel> recentlyBookedModelObj = RecentlyBookedModel().obs;

 }
