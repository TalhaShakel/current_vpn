import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/exports.dart';
import '../../login/login_screen.dart';

class MenuAppBar extends StatelessWidget {
  const MenuAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenHeight(context) * 0.03),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Get.back();
            },
            borderRadius: BorderRadius.circular(radius6),
            child: Ink(
              height: screenHeight(context) * 0.05,
              width: screenHeight(context) * 0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius6),
                color: AppColors.blueLightColor,
                border: Border.all(
                  color: AppColors.whiteColor,
                  width: 1.0,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.shadowColor,
                    blurRadius: 15.0,
                    offset: Offset(8.0, 8.0),
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.asset(AppIcons.arrowLeftIcon),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Text('Sign out',
            style: poppinsRegular.copyWith(
              fontSize: body14,
              color: AppColors.secondaryLightColor,
            ),
          ),
          SizedBox(width: screenHeight(context) * 0.02),
          InkWell(
            onTap: (){
              Get.to(LoginScreen());
            },
            borderRadius: BorderRadius.circular(radius6),
            child: Ink(
              height: screenHeight(context) * 0.05,
              width: screenHeight(context) * 0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius6),
                color: AppColors.blueLightColor,
                border: Border.all(
                  color: AppColors.whiteColor,
                  width: 1.0,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.shadowColor,
                    blurRadius: 15.0,
                    offset: Offset(8.0, 8.0),
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.asset(AppIcons.signoutIcon),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
