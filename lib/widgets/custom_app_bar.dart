import 'package:flutter/material.dart';

import '../constants/exports.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback? onBackTap;
  final String? titleText;
  final double? topPadding;

  const CustomAppBar({
    Key? key,
    required this.onBackTap,
    required this.titleText,
    this.topPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding ?? screenHeight(context) * 0.04),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: onBackTap,
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
          Expanded(
            child: Center(
              child: Text(
                titleText!,
                style: poppinsRegular.copyWith(
                  fontSize: body18,
                  color: AppColors.secondaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30.0),
        ],
      ),
    );
  }
}
