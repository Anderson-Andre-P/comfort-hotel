import 'package:anderson_s_application1/core/app_export.dart';import 'package:anderson_s_application1/presentation/my_bookmarks_screen/models/my_bookmarks_model.dart';/// A controller class for the MyBookmarksScreen.
///
/// This class manages the state of the MyBookmarksScreen, including the
/// current myBookmarksModelObj
class MyBookmarksController extends GetxController {Rx<MyBookmarksModel> myBookmarksModelObj = MyBookmarksModel().obs;

 }
