import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:frontend/infrastructure/theme/colors.dart';

class TextfiledPassword extends StatelessWidget {
  final String title;
  final String hint;
  final TextInputType keyboard;
  final TextEditingController controller;
  final RxBool isObsecure = true.obs;

  TextfiledPassword({
    Key? key,
    required this.title,
    required this.hint,
    required this.keyboard,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: greyColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Gilroy',
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Obx(
          () => TextField(
            autocorrect: false,
            controller: controller,
            keyboardType: keyboard,
            cursorColor: blackColor,
            obscureText: isObsecure.value,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: lightGreyColor,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: lightGreyColor,
                  width: 1,
                ),
              ),
              hintText: hint,
              hintStyle: TextStyle(
                color: lightGreyColor,
                fontFamily: 'Gilroy',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              suffixIcon: GestureDetector(
                  onTap: () {
                    isObsecure.value = !isObsecure.value;
                  },
                  child: Obx(
                    () => Container(
                      width: 24,
                      height: 24,
                      padding: EdgeInsets.all(8),
                      child: isObsecure.value
                          ? SvgPicture.asset(
                              'assets/icons/eye-line.svg',
                              width: 24,
                              height: 24,
                            )
                          : SvgPicture.asset(
                              'assets/icons/eye-close3.svg',
                              width: 24,
                              height: 24,
                            ),
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
