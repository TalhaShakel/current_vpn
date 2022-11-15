import 'package:flutter/material.dart';

import '../../../constants/exports.dart';

class PremiumBox extends StatelessWidget {
  const PremiumBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      padding: EdgeInsets.all(padding8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius10),
        border: Border.all(
          color: AppColors.orangeColor,
          width: 1.0,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppIcons.dimondIcon),
          SizedBox(width: screenHeight(context) * 0.016),
          Expanded(
            child: Text(
              'Premium Service',
              style: poppinsMedium.copyWith(
                fontSize: body16,
                color: AppColors.orangeColor,
              ),
            ),
          ),
          Bounceable(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.orangeDarkOneColor,
                    AppColors.orangeDarkTwoColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Text('Get it now',
                style: poppinsMedium.copyWith(
                  fontSize: body16,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
