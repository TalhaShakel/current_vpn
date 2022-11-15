import 'package:flutter/material.dart';

import '../../../constants/exports.dart';

class PointRow extends StatelessWidget {
  final String? iconPath;
  final String? text;

  const PointRow({Key? key, this.iconPath, this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenHeight(context) * 0.024,
        right: screenHeight(context) * 0.024,
        bottom: 16.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(iconPath!,
            height: 24.0,
            width: 24.0,
          ),
          SizedBox(width: screenHeight(context) * 0.012),
          Text(text!,
            style: poppinsMedium.copyWith(
              fontSize: body16,
              color: AppColors.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
