import '../forgot_password_screen/widgets/forgotpassword_item_widget.dart';import 'controller/forgot_password_controller.dart';import 'models/forgotpassword_item_model.dart';import 'package:anderson_s_application1/core/app_export.dart';import 'package:anderson_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:anderson_s_application1/widgets/app_bar/appbar_title.dart';import 'package:anderson_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:anderson_s_application1/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {const ForgotPasswordScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 39.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 16.v), CustomImageView(imagePath: ImageConstant.imgImage, height: 240.adaptSize, width: 240.adaptSize, alignment: Alignment.center), SizedBox(height: 41.v), Container(width: 355.h, margin: EdgeInsets.only(right: 24.h), child: Text("msg_select_which_contact".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.50))), SizedBox(height: 18.v), _buildForgotPassword()])), bottomNavigationBar: _buildContinueButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildForgotPassword() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: controller.forgotPasswordModelObj.value.forgotpasswordItemList.value.length, itemBuilder: (context, index) {ForgotpasswordItemModel model = controller.forgotPasswordModelObj.value.forgotpasswordItemList.value[index]; return ForgotpasswordItemWidget(model);})); } 
/// Section Widget
Widget _buildContinueButton() { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapContinueButton();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the forgotPasswordTypeOtpScreen when the action is triggered.
onTapContinueButton() { Get.toNamed(AppRoutes.forgotPasswordTypeOtpScreen, ); } 
 }
