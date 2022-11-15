import 'package:flutter/material.dart';

import '../../../constants/exports.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final String? iconPath;
  final bool? isPrefix;

  const MenuButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.iconPath,
    this.isPrefix = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenHeight(context) * 0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /// icon
          isPrefix == true ? SvgPicture.asset(iconPath!, height: 24.0, width: 24.0) : const SizedBox(),
          isPrefix == true ? SizedBox(width: screenHeight(context) * 0.02) : const SizedBox(),

          Expanded(
            child: InkWell(
              onTap: onTap,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          text!,
                          style: poppinsRegular.copyWith(
                            fontSize: body16,
                            color: AppColors.secondaryLightColor,
                          ),
                        ),
                      ),
                      SvgPicture.asset(AppIcons.arrowRightIcon),
                    ],
                  ),
                  SizedBox(height: screenHeight(context) * 0.015),
                  const Divider(
                    thickness: 1.0,
                    height: 1.0,
                    color: AppColors.fieldTextColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
