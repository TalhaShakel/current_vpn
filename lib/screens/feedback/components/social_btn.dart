import 'package:current_vpn/constants/exports.dart';
import 'package:flutter/material.dart';

class SocialBtn extends StatelessWidget {
  final VoidCallback? onTap;
  final String? iconPath;
  final String? text;

  const SocialBtn({
    Key? key,
    required this.onTap,
    required this.iconPath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  AppColors.gradientOneColor,
                  AppColors.gradientTwoColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 15.0,
                  offset: Offset(8.0, 8.0),
                ),
              ],
            ),
            child: Center(
              child: SvgPicture.asset(iconPath!),
            ),
          ),
          SizedBox(height: 7.0),
          Text(
            text!,
            style: poppinsRegular.copyWith(
              fontSize: body12,
              color: AppColors.secondaryLightColor,
            ),
          ),
        ],
      ),
    );
  }
}
