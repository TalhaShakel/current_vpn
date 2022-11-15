import 'package:country_pickers/country.dart';
import 'package:current_vpn/screens/server_list/server_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/exports.dart';

class SelectLocationBox extends StatefulWidget {
  const SelectLocationBox({Key? key}) : super(key: key);

  @override
  State<SelectLocationBox> createState() => _SelectLocationBoxState();
}

class _SelectLocationBoxState extends State<SelectLocationBox> {
  Country? country;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Get.to(ServerListScreen());
        },
        child: Container(
          height: 55.0,
          width: screenHeight(context) * 0.3,
          padding: EdgeInsets.only(right: padding12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            gradient: const LinearGradient(
              colors: [
                AppColors.blueWhiteColor,
                AppColors.greyWhiteColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 15.0,
                offset: Offset(8.0, 8.0),
              ),
            ],
            border: Border.all(
              color: AppColors.whiteColor,
              width: 2.0,
            ),
          ),
          child: Row(
            children: <Widget>[
              const SizedBox(width: 24.0),
              SizedBox(
                width: screenHeight(context) * 0.036,
                height: screenHeight(context) * 0.036,
                child: Image.asset(AppIcons.usIcon),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Text(
                  'United States',
                  style: poppinsRegular.copyWith(
                    fontSize: 14.0,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ),
              SvgPicture.asset(AppIcons.arrowRightIcon),
            ],
          ),
        ),
      ),
    );
  }
}
