import 'package:flutter/material.dart';

import '../../../infrastructure/theme/colors.dart';

class TextfieldSignIn extends StatelessWidget {
  TextfieldSignIn({
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
          ),
        )
      ],
    );
  }
}
