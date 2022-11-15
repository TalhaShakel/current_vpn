import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import '../../models/item_model.dart';
import '../../widgets/back_image_widget.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///appbar
                CustomAppBar(
                  onBackTap: () {
                    Get.back();
                  },
                  titleText: 'Tips',
                ),
                SizedBox(height: screenHeight(context) * 0.03),

                /// layout
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: padding30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AppIcons.layoutIcon),
                            SizedBox(width: screenHeight(context) * 0.016),
                            Text(
                              'General',
                              style: poppinsRegular.copyWith(
                                fontSize: body16,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight(context) * 0.016),
                        const Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: AppColors.fieldTextColor,
                        ),

                        /// items
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: generalItems.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ExpansionPanelList(
                                  animationDuration: const Duration(milliseconds: 500),
                                  dividerColor: AppColors.secondaryColor,
                                  elevation: 0,
                                  children: [
                                    ExpansionPanel(
                                      body: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            generalItems[index].description!,
                                            style: poppinsRegular.copyWith(
                                              color: AppColors.secondaryColor,
                                              fontSize: body12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      headerBuilder:
                                          (BuildContext context, bool isExpanded) {
                                        return Padding(
                                          padding: const EdgeInsets.only(top: 16.0),
                                          child: Text(
                                            generalItems[index].headerItem!,
                                            style: poppinsRegular.copyWith(
                                              color: AppColors.secondaryColor,
                                              fontSize: body14,
                                            ),
                                          ),
                                        );
                                      },
                                      isExpanded: generalItems[index].expanded!,
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ],
                                  expansionCallback: (int item, bool status) {
                                    setState(() {
                                      generalItems[index].expanded =
                                      !generalItems[index].expanded!;
                                    });
                                  },
                                ),
                                const Divider(
                                  height: 1.0,
                                  thickness: 1.0,
                                  color: AppColors.fieldTextColor,
                                ),
                              ],
                            );
                          },
                        ),
                        SizedBox(height: screenHeight(context) * 0.024),

                        /// Get More Traffic
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AppIcons.getTraficIcon),
                                SizedBox(width: screenHeight(context) * 0.016),
                                Text(
                                  'Get More Traffic',
                                  style: poppinsRegular.copyWith(
                                    fontSize: body16,
                                    color: AppColors.secondaryColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight(context) * 0.016),
                            const Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: AppColors.fieldTextColor,
                            ),
                          ],
                        ),

                        /// items
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: getMoreItems.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ExpansionPanelList(
                                  animationDuration: const Duration(milliseconds: 500),
                                  dividerColor: AppColors.secondaryColor,
                                  elevation: 0,
                                  children: [
                                    ExpansionPanel(
                                      body: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            getMoreItems[index].description!,
                                            style: poppinsRegular.copyWith(
                                              color: AppColors.secondaryColor,
                                              fontSize: body12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      headerBuilder:
                                          (BuildContext context, bool isExpanded) {
                                        return Padding(
                                          padding: const EdgeInsets.only(top: 16.0),
                                          child: Text(
                                            getMoreItems[index].headerItem!,
                                            style: poppinsRegular.copyWith(
                                              color: AppColors.secondaryColor,
                                              fontSize: body14,
                                            ),
                                          ),
                                        );
                                      },
                                      isExpanded: getMoreItems[index].expanded!,
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ],
                                  expansionCallback: (int item, bool status) {
                                    setState(() {
                                      getMoreItems[index].expanded =
                                      !getMoreItems[index].expanded!;
                                    });
                                  },
                                ),
                                const Divider(
                                  height: 1.0,
                                  thickness: 1.0,
                                  color: AppColors.fieldTextColor,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
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
