import 'package:anderson_s_application1/core/app_export.dart';import 'package:anderson_s_application1/presentation/gallery_screen/models/gallery_model.dart';/// A controller class for the GalleryScreen.
///
/// This class manages the state of the GalleryScreen, including the
/// current galleryModelObj
class GalleryController extends GetxController {Rx<GalleryModel> galleryModelObj = GalleryModel().obs;

 }
