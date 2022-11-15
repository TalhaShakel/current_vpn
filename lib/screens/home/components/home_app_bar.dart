import 'package:current_vpn/screens/menu/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/exports.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Get.to(MenuScreen());
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
              child: SvgPicture.asset(AppIcons.menuIcon),
            ),
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppIcons.textLogo),
              SizedBox(width: 5.0),
              Text(
                'Basic',
                style: poppinsMedium.copyWith(
                  fontSize: body20,
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(width: 6.0),
              SvgPicture.asset(AppIcons.dropdownIcon),
            ],
          ),
        ),
        SvgPicture.asset(AppIcons.exchangeIcon),
      ],
    );
  }
}
