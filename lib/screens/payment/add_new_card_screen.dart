import 'package:current_vpn/controllers/add_new_card_controller.dart';
import 'package:current_vpn/screens/payment/components/card_field.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';

class AddNewCardScreen extends StatelessWidget {
  AddNewCardScreen({Key? key}) : super(key: key);

  final AddNewCardController controller = Get.put(AddNewCardController());

  @override
  Widget build(BuildContext context) {
    return BackImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// body
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: screenHeight(context) * 0.03,
                  right: screenHeight(context) * 0.03,
                  bottom: 50.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ///appbar
                    CustomAppBar(
                      onBackTap: () {
                        Get.back();
                      },
                      titleText: 'Payment',
                    ),
                    SizedBox(height: screenHeight(context) * 0.03),

                    /*/// texts
                    Center(
                      child: Text(
                        'Please choose your Card',
                        style: poppinsRegular.copyWith(
                          fontSize: body14,
                          color: AppColors.tintLightColor,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight(context) * 0.03),

                    /// texts
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding16),
                      child: Text(
                        'Your payment cards',
                        style: poppinsRegular.copyWith(
                          fontSize: body14,
                          color: AppColors.secondaryLightColor,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight(context) * 0.03),

                    /// card
                    Container(
                      height: screenHeight(context) * 0.2,
                      width: screenWidth(context),
                      padding: EdgeInsets.all(screenHeight(context) * 0.024),
                      margin: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.036),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radius8),
                        color: AppColors.gradientOneColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(AppIcons.chipIcon),
                          SizedBox(height: screenHeight(context) * 0.05),
                          Center(
                            child: Text(
                              '**** **** **** 3947',
                              style: poppinsMedium.copyWith(
                                fontSize: body18,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),*/

                    /// add new card texts
                    SizedBox(height: screenHeight(context) * 0.02),
                    Text(
                      'Add new card',
                      style: poppinsMedium.copyWith(
                        fontSize: body16,
                        color: AppColors.gradientTwoColor,
                      ),
                    ),

                    /// name field
                    SizedBox(height: screenHeight(context) * 0.02),
                    CardField(
                      controller: controller.nameController,
                      labelText: 'Name of Card',
                      hintText: 'Ahmad Ali',
                    ),

                    /// number field
                    SizedBox(height: screenHeight(context) * 0.016),
                    CardField(
                      controller: controller.numberController,
                      labelText: 'Card number',
                      hintText: '5546 8205 3693 3947',
                      keyboardType: TextInputType.number,
                    ),

                    /// expire date field
                    SizedBox(height: screenHeight(context) * 0.016),
                    CardField(
                      controller: controller.numberController,
                      labelText: 'Expire Date',
                      hintText: '05/23',
                      keyboardType: TextInputType.datetime,
                    ),

                    /// cvv field
                    SizedBox(height: screenHeight(context) * 0.016),
                    CardField(
                      controller: controller.numberController,
                      labelText: 'CVV',
                      hintText: '567',
                      keyboardType: TextInputType.number,
                    ),

                    /// set default
                    SizedBox(height: screenHeight(context) * 0.024),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                              () => GestureDetector(
                            onTap: () {
                              controller.setDefault.value =
                              !controller.setDefault.value;
                            },
                            child: Container(
                              height: 20.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(radius6),
                                color: controller.setDefault.value == true
                                    ? AppColors.gradientOneColor
                                    : AppColors.whiteColor,
                                border: Border.all(
                                  width: 1.0,
                                  color: AppColors.gradientOneColor,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.check,
                                  color: AppColors.whiteColor,
                                  size: body14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: screenHeight(context) * 0.016),
                        Text(
                          'Set as default payment method.',
                          style: poppinsMedium.copyWith(
                            fontSize: body12,
                            color: AppColors.tintLightColor,
                          ),
                        ),
                      ],
                    ),

                    /// btn
                    SizedBox(height: screenHeight(context) * 0.024),
                    CustomGradientButton(
                      btnText: 'Log In',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
           /* Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: screenWidth(context),
                height: screenHeight(context) * 0.57,
                padding: EdgeInsets.symmetric(horizontal: padding16),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.blackColor.withOpacity(0.1),
                      blurRadius: 15.0,
                      offset: const Offset(8.0, -8.0),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// add new card texts
                      SizedBox(height: screenHeight(context) * 0.02),
                      Text(
                        'Add new card',
                        style: poppinsMedium.copyWith(
                          fontSize: body16,
                          color: AppColors.gradientTwoColor,
                        ),
                      ),

                      /// name field
                      SizedBox(height: screenHeight(context) * 0.02),
                      CardField(
                        controller: controller.nameController,
                        labelText: 'Name of Card',
                        hintText: 'Ahmad Ali',
                      ),

                      /// number field
                      SizedBox(height: screenHeight(context) * 0.016),
                      CardField(
                        controller: controller.numberController,
                        labelText: 'Card number',
                        hintText: '5546 8205 3693 3947',
                        keyboardType: TextInputType.number,
                      ),

                      /// expire date field
                      SizedBox(height: screenHeight(context) * 0.016),
                      CardField(
                        controller: controller.numberController,
                        labelText: 'Expire Date',
                        hintText: '05/23',
                        keyboardType: TextInputType.datetime,
                      ),

                      /// cvv field
                      SizedBox(height: screenHeight(context) * 0.016),
                      CardField(
                        controller: controller.numberController,
                        labelText: 'CVV',
                        hintText: '567',
                        keyboardType: TextInputType.number,
                      ),

                      /// set default
                      SizedBox(height: screenHeight(context) * 0.024),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(
                            () => GestureDetector(
                              onTap: () {
                                controller.setDefault.value =
                                    !controller.setDefault.value;
                              },
                              child: Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(radius6),
                                  color: controller.setDefault.value == true
                                      ? AppColors.gradientOneColor
                                      : AppColors.whiteColor,
                                  border: Border.all(
                                    width: 1.0,
                                    color: AppColors.gradientOneColor,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check,
                                    color: AppColors.whiteColor,
                                    size: body14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: screenHeight(context) * 0.016),
                          Text(
                            'Set as default payment method.',
                            style: poppinsMedium.copyWith(
                              fontSize: body12,
                              color: AppColors.tintLightColor,
                            ),
                          ),
                        ],
                      ),

                      /// btn
                      SizedBox(height: screenHeight(context) * 0.024),
                      CustomGradientButton(
                        btnText: 'Log In',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
