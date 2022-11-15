import 'package:current_vpn/controllers/server_list_controller.dart';
import 'package:current_vpn/screens/server_list/components/location_view.dart';
import 'package:current_vpn/screens/server_list/components/streaming_view.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import '../../widgets/custom_app_bar.dart';

class ServerListScreen extends StatelessWidget {
  ServerListScreen({Key? key}) : super(key: key);

  final ServerListController controller = Get.put(ServerListController());

  @override
  Widget build(BuildContext context) {
    return BackImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// body
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///appbar
                CustomAppBar(
                  onBackTap: () {
                    Get.back();
                  },
                  titleText: 'Server List',
                  topPadding: screenHeight(context) * 0.03,
                ),
                SizedBox(height: screenHeight(context) * 0.03),

                /// tabs
                Container(
                  width: screenWidth(context),
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.shadowColor,
                        blurRadius: 15.0,
                        offset: Offset(8.0, 8.0),
                      ),
                    ],
                    border: Border.all(
                      color: AppColors.whiteColor,
                      width: 1.0,
                    ),
                  ),
                  child: TabBar(
                    controller: controller.controller,
                    indicatorColor: AppColors.whiteColor,
                    indicator: BoxDecoration(
                      color: AppColors.tabColor,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    labelColor: AppColors.secondaryColor,
                    unselectedLabelColor: AppColors.secondaryColor,
                    labelStyle: poppinsRegular.copyWith(
                      fontSize: body14,
                    ),
                    unselectedLabelStyle: poppinsRegular.copyWith(
                      fontSize: body14,
                    ),
                    tabs: controller.myTabs,
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.03),

                /// tabbar view
                Expanded(
                  child: TabBarView(
                    controller: controller.controller,
                    children: [
                      LocationView(),
                      StreamingView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
