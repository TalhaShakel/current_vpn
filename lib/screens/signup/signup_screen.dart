import 'package:current_vpn/constants/exports.dart';
import 'package:current_vpn/controllers/signup_controller.dart';
import 'package:current_vpn/screens/login/login_screen.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:current_vpn/widgets/custom_app_bar.dart';
import 'package:current_vpn/widgets/custom_button.dart';
import 'package:current_vpn/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  final SignupController controller = Get.put(SignupController());

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
                SizedBox(height: screenHeight(context) * 0.02),

                /// texts
                Text(
                  'Password must have at least 8 and up to 16 characters, \nuppercase and lowercase letters, and symbols. ',
                  style: poppinsRegular.copyWith(
                    fontSize: body12,
                    color: AppColors.secondaryColor,
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.1),

                /// btn
                CustomGradientButton(
                  btnText: 'Sign Up',
                  onTap: () async {
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: controller.emailController.text.trim(),
                              password:
                                  controller.passwordController.text.trim());
                      Get.snackbar("Create Account Sucessfully", "");
                    } on FirebaseException catch (e) {
                      print(e);
                      Get.snackbar("${e.message}", "");
                    }
                  },
                ),
                SizedBox(height: screenHeight(context) * 0.016),

                /// already have an account
                Center(
                  child: TextButton(
                    onPressed: () {
                      Get.to(LoginScreen());
                    },
                    child: Text(
                      'Already Have An Account?',
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
