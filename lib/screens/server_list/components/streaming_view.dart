import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/exports.dart';
import '../../../controllers/server_list_controller.dart';

class StreamingView extends StatelessWidget {
  StreamingView({Key? key}) : super(key: key);

  final ServerListController controller = Get.put(ServerListController());

  List<String> flags = [
    AppIcons.usIcon,
    AppIcons.australiaIcon,
    AppIcons.argentinaIcon,
    AppIcons.chinaIcon,
    AppIcons.canadaIcon,
    AppIcons.bulgariaIcon,
    AppIcons.brazilIcon,
    AppIcons.bulgariaIcon,
    AppIcons.ukIcon,
    AppIcons.greeceIcon,
    AppIcons.indiaIcon,
  ];

  List<String> names = [
    'Video-US-N',
    'Video-D+',
    'BT-CA',
    'P2P-CN',
    'BT-CA',
    'P2P-BG',
    'P2P-BL',
    'Video-BA',
    'You Tube-UK',
    'Video-GC',
    'Video-IN-Y',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Premium Servers texts
        Text(
          'Premium Servers',
          style: poppinsRegular.copyWith(
            fontSize: body16,
            color: AppColors.secondaryColor,
          ),
        ),
        SizedBox(height: screenHeight(context) * 0.02),

        Expanded(
          child: ListView.builder(
            itemCount: flags.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  controller.streamCurrentIndex.value = index;
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(flags[index]),
                      SizedBox(width: screenHeight(context) * 0.02),
                      Expanded(
                        child: Text(
                          names[index],
                          style: poppinsRegular.copyWith(
                            fontSize: body14,
                            color: AppColors.secondaryLightColor,
                          ),
                        ),
                      ),
                      SvgPicture.asset(AppIcons.orangeDimondIcon),
                      SizedBox(width: screenHeight(context) * 0.012),
                      Obx(() => Container(
                        height: 18.0,
                        width: 18.0,
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.gradientTwoColor,
                            width: 1.0,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: controller.streamCurrentIndex.value == index
                                ? AppColors.gradientTwoColor
                                : AppColors.whiteColor,
                          ),
                        ),
                      ),),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
