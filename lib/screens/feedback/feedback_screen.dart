import 'package:current_vpn/screens/feedback/components/social_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import '../../widgets/back_image_widget.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  bool isSend = true;

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
                  titleText: 'Feedback',
                ),
                SizedBox(height: screenHeight(context) * 0.03),

                ///
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: padding30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Choose your Problem',
                          style: poppinsRegular.copyWith(
                            fontSize: body16,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        SizedBox(height: screenHeight(context) * 0.02),

                        ///
                        Container(
                          height: 52.0,
                          padding: EdgeInsets.symmetric(horizontal: padding12),
                          width: screenWidth(context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius10),
                            border: Border.all(
                              color: AppColors.whiteColor,
                              width: 2.0,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.shadowColor,
                                blurRadius: 15.0,
                                offset: Offset(8.0, 8.0),
                              ),
                            ],
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.blueWhiteColor,
                                AppColors.greyWhiteColor,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Network connection problem',
                                  style: poppinsRegular.copyWith(
                                    fontSize: body14,
                                    color: AppColors.secondaryLightColor,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                color: AppColors.secondaryLightColor,
                                size: 20.0,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight(context) * 0.03),

                        ///
                        Text(
                          'Describe your problem',
                          style: poppinsRegular.copyWith(
                            fontSize: body18,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        SizedBox(height: screenHeight(context) * 0.02),

                        /// field
                        Container(
                          width: screenWidth(context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius10),
                            border: Border.all(
                              color: AppColors.whiteColor,
                              width: 2.0,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.shadowColor,
                                blurRadius: 15.0,
                                offset: Offset(8.0, 8.0),
                              ),
                            ],
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.blueWhiteColor,
                                AppColors.greyWhiteColor,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            maxLines: 10,
                            minLines: 6,
                            style: poppinsRegular.copyWith(
                              fontSize: body14,
                              color: AppColors.secondaryLightColor,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: padding16,
                                  vertical: padding16,
                                ),
                                hintText: 'Enter your problem & suggestion',
                                hintStyle: poppinsRegular.copyWith(
                                  fontSize: body14,
                                  color: AppColors.secondaryLightColor,
                                )),
                          ),
                        ),
                        SizedBox(height: screenHeight(context) * 0.03),

                        /// row
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSend = !isSend;
                                });
                              },
                              child: Container(
                                height: 18.0,
                                width: 18.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isSend == true
                                      ? AppColors.gradientTwoColor
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: AppColors.gradientTwoColor,
                                    width: 1.0,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check,
                                    color: AppColors.whiteColor,
                                    size: body12,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: screenHeight(context) * 0.012),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Send diagnostic information to ',
                                      style: poppinsRegular.copyWith(
                                        fontSize: body12,
                                        color: AppColors.secondaryLightColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'CURRENTVPN.',
                                      style: poppinsMedium.copyWith(
                                        fontSize: body12,
                                        color: AppColors.gradientTwoColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight(context) * 0.03),

                        /// btn
                        CustomGradientButton(
                          btnText: 'Submit',
                          onTap: () {},
                        ),
                        SizedBox(height: screenHeight(context) * 0.05),

                        /// row
                        Row(
                          children: [
                            Expanded(
                              child: SocialBtn(
                                onTap: () {},
                                iconPath: AppImages.telegram,
                                text: 'Telegram',
                              ),
                            ),
                            Expanded(
                              child: SocialBtn(
                                onTap: () {},
                                iconPath: AppImages.blog,
                                text: 'Blog',
                              ),
                            ),
                            Expanded(
                              child: SocialBtn(
                                onTap: () {},
                                iconPath: AppImages.facebook,
                                text: 'Facebook',
                              ),
                            ),
                            Expanded(
                              child: SocialBtn(
                                onTap: () {},
                                iconPath: AppImages.twitter,
                                text: 'Twitter',
                              ),
                            ),
                          ],
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
