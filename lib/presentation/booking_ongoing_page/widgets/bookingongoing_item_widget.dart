import '../controller/booking_ongoing_controller.dart';
import '../models/bookingongoing_item_model.dart';
import 'package:anderson_s_application1/core/app_export.dart';
import 'package:anderson_s_application1/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookingongoingItemWidget extends StatelessWidget {
  BookingongoingItemWidget(
    this.bookingongoingItemModelObj, {
    Key? key,
    this.onTapBookingActionCancelBookingButton,
    this.onTapBookingActionViewTicketButton,
  }) : super(
          key: key,
        );

  BookingongoingItemModel bookingongoingItemModelObj;

  var controller = Get.find<BookingOngoingController>();

  VoidCallback? onTapBookingActionCancelBookingButton;

  VoidCallback? onTapBookingActionViewTicketButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: bookingongoingItemModelObj.image!.value,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          bookingongoingItemModelObj.royalePresident!.value,
                          style: CustomTextStyles.titleLargeSemiBold,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Obx(
                        () => Text(
                          bookingongoingItemModelObj.parisFrance!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      CustomElevatedButton(
                        height: 24.v,
                        width: 60.h,
                        text: "lbl_paid".tr,
                        buttonStyle: CustomButtonStyles.fillTeal,
                        buttonTextStyle: CustomTextStyles.labelMediumCyan300,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "lbl_cancel_booking".tr,
                  margin: EdgeInsets.only(right: 6.h),
                  onPressed: () {
                    onTapBookingActionCancelBookingButton!.call();
                  },
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 38.v,
                  text: "lbl_view_ticket".tr,
                  margin: EdgeInsets.only(left: 6.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL19,
                  buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
                  onPressed: () {
                    onTapBookingActionViewTicketButton!.call();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
