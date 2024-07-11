import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../infrastructure/theme/colors.dart';

class TextfieldPassword extends StatelessWidget {
  TextfieldPassword({
    super.key,
    required this.controller,
    required this.title,
    required this.hint,
    required this.isObsecure,
    required this.keyboard,
  });

  String title;
  String hint;
  bool isObsecure;
  TextInputType keyboard;
  TextEditingController controller;

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
        TextField(
          autocorrect: false,
          controller: controller,
          keyboardType: keyboard,
          cursorColor: blackColor,
          obscureText: isObsecure,
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
                color: greyColor,
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
            suffixIcon: Container(
              width: 24, // Set the desired width
              height: 24, // Set the desired height
              padding: EdgeInsets.all(8), // Add padding if needed
              child: SvgPicture.asset(
                'assets/icons/eye-line.svg', // Set the same height here
              ),
            ),
          ),
        )
      ],
    );
  }
}
