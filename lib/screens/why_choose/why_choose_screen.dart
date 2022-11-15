import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import '../../models/question_answer_model.dart';
import '../../widgets/back_image_widget.dart';

class WhyChooseCurrenVPN extends StatelessWidget {
  const WhyChooseCurrenVPN({Key? key}) : super(key: key);

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
                  titleText: 'Why Choose CURRENTVPN?',
                ),
                SizedBox(height: screenHeight(context) * 0.03),

                /// text answers
                Expanded(
                  child: ListView.builder(
                    itemCount: qAList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: padding24, bottom: padding16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 22.0,
                                  width: 3.0,
                                  decoration: BoxDecoration(
                                    color: AppColors.gradientOneColor,
                                    borderRadius: BorderRadius.circular(radius6),
                                  ),
                                ),
                                SizedBox(width: screenHeight(context) * 0.016),
                                Text(qAList[index].qText.toString(),
                                  style: poppinsMedium.copyWith(
                                    fontSize: body14,
                                    color: AppColors.secondaryColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight(context) * 0.016),
                            Text(qAList[index].aText.toString(),
                              style: poppinsRegular.copyWith(
                                fontSize: body12,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
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
