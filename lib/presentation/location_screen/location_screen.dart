import 'controller/location_controller.dart';import 'dart:async';import 'package:anderson_s_application1/core/app_export.dart';import 'package:anderson_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:anderson_s_application1/widgets/app_bar/appbar_title.dart';import 'package:anderson_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';
// ignore_for_file: must_be_immutable
class LocationScreen extends GetWidget<LocationController> {LocationScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: SizedBox(height: 882.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [_buildImage(), CustomImageView(imagePath: ImageConstant.imgLocation, height: 50.v, width: 42.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 394.v)), _buildFour()]))))); } 
/// Section Widget
Widget _buildImage() { return SizedBox(height: 882.v, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
/// Section Widget
Widget _buildFour() { return Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(vertical: 11.v), decoration: AppDecoration.gradientGrayToGray, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 61.v), CustomAppBar(height: 30.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, bottom: 2.v), onTap: () {onTapArrowLeft();}), title: AppbarTitle(text: "lbl_hotel_location".tr, margin: EdgeInsets.only(left: 16.h)))]))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
