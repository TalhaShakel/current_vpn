import 'package:current_vpn/constants/exports.dart';
import 'package:current_vpn/controllers/login_controller.dart';
import 'package:current_vpn/screens/get_started/get_started_screen.dart';
import 'package:current_vpn/screens/signup/signup_screen.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:current_vpn/widgets/custom_app_bar.dart';
import 'package:current_vpn/widgets/custom_button.dart';
import 'package:current_vpn/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return BackImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// body
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///appbar
                CustomAppBar(onBackTap: () {}, titleText: 'Create Account'),
                SizedBox(height: screenHeight(context) * 0.06),

                /// image
                Center(
                  child: Image.asset(
                    AppImages.appLogo,
                    height: screenHeight(context) * 0.1,
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.12),

                /// email field
                CustomTextField(
                  controller: controller.emailController,
                  hintText: 'Enter Email address',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: screenHeight(context) * 0.015),

                /// password field
                Obx(
                  () => CustomTextField(
                    obscureText: controller.isVisible.value,
                    controller: controller.passwordController,
                    hintText: 'Enter Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.isVisible.value =
                            !controller.isVisible.value;
                      },
                      icon: SvgPicture.asset(AppIcons.eyeClosedIcon),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.01),

                /// texts
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot my password?',
                    style: poppinsRegular.copyWith(
                      fontSize: body12,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.1),

                /// btn
                CustomGradientButton(
                  btnText: 'Log In',
                  onTap: () async {
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: controller.emailController.text.trim(),
                          password: controller.passwordController.text.trim());
                      Get.snackbar("login Sucessfully", "");
                      Get.to(GetStartedScreen());
                    } on FirebaseException catch (e) {
                      print(e);
                      Get.snackbar("${e.message}", "");
                    }
                  },
                ),
                SizedBox(height: screenHeight(context) * 0.016),

                /// create an account
                Center(
                  child: TextButton(
                    onPressed: () {
                      Get.to(SignupScreen());
                    },
                    child: Text(
                      'Create An Account?',
                      style: poppinsRegular.copyWith(
                        fontSize: body14,
                        color: AppColors.gradientTwoColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
