import 'package:current_vpn/constants/exports.dart';
import 'package:flutter/material.dart';

class BackImageWidget extends StatefulWidget {
  final Widget? child;
  const BackImageWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<BackImageWidget> createState() => _BackImageWidgetState();
}

class _BackImageWidgetState extends State<BackImageWidget> {

  Image? myImage;

  @override
  void initState() {
    // Adjust the provider based on the image type
    myImage= Image.asset(AppImages.backImage);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(myImage!.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      width: screenWidth(context),
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        image: DecorationImage(
          image: AssetImage(AppImages.backImage),
          fit: BoxFit.fill,
        ),
      ),
      child: widget.child,
    );
  }
}
