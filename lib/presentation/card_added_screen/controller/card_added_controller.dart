import 'package:anderson_s_application1/core/app_export.dart';import 'package:anderson_s_application1/presentation/card_added_screen/models/card_added_model.dart';/// A controller class for the CardAddedScreen.
///
/// This class manages the state of the CardAddedScreen, including the
/// current cardAddedModelObj
class CardAddedController extends GetxController {Rx<CardAddedModel> cardAddedModelObj = CardAddedModel().obs;

Rx<String> radioGroup = "".obs;

 }
