import 'package:flutter/material.dart';

import '../../../constants/exports.dart';

class SelectModelBox extends StatelessWidget {
  const SelectModelBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      padding: EdgeInsets.symmetric(vertical: padding8, horizontal: padding8),
      decoration: BoxDecoration(
        color: AppColors.whiteTwoColor,
        borderRadius: BorderRadius.circular(radius10),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Auto Mode',
                style: poppinsRegular.copyWith(
                  fontSize: body14,
                  color: AppColors.gradientTwoColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
            width: 1.0,
            child: VerticalDivider(
              thickness: 1.0,
              width: 1.0,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'IKEv2',
                style: poppinsRegular.copyWith(
                  fontSize: body14,
                  color: AppColors.tintLightColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
            width: 1.0,
            child: VerticalDivider(
              thickness: 1.0,
              width: 1.0,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'IPSec',
                style: poppinsRegular.copyWith(
                  fontSize: body14,
                  color: AppColors.tintLightColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
            width: 1.0,
            child: VerticalDivider(
              thickness: 1.0,
              width: 1.0,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'OpenVPN',
                style: poppinsRegular.copyWith(
                  fontSize: body14,
                  color: AppColors.tintLightColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
