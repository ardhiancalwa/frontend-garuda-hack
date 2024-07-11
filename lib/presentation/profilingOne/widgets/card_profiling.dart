import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/theme/colors.dart';
import '../controllers/profiling_one.controller.dart';

class CardProfiling extends StatelessWidget {
  CardProfiling({
    super.key,
    required this.image,
    required this.title,
    required this.isChecked,
    required this.toggleCheck,
  });

  final String image;
  final String title;
  final RxBool isChecked;
  final VoidCallback toggleCheck;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() {
          return Container(
            height: 166,
            width: 170,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: lightGreyColor,
                width: 1,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Image.asset('assets/images/$image.png'),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: isChecked.value ? primaryColor : lightGreyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ],
            ),
          );
        }),
        Positioned(
          top: 11,
          right: 10,
          child: GestureDetector(
            onTap: toggleCheck,
            child: Obx(() {
              return Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: isChecked.value ? primaryColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color:
                        isChecked.value ? Colors.transparent : lightGreyColor,
                    width: 1,
                  ),
                ),
                child: Icon(
                  Icons.check,
                  color: isChecked.value ? whiteColor : Colors.transparent,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
