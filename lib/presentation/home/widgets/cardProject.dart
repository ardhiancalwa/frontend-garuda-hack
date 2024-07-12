import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/navigation/routes.dart';
import 'package:get/get.dart';

import '../../../infrastructure/theme/colors.dart';
import '../../../infrastructure/theme/text_component.dart';

class CardProject extends StatelessWidget {
  CardProject({
    super.key,
    required this.company,
    required this.image,
    required this.level,
    required this.project,
    required this.percentage_match,
    required this.slot,
  });

  String company;
  String image;
  String level;
  String project;
  String percentage_match;
  String slot;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(Routes.PROJECT_DETAILS);
        },
        child: Container(
          height: 160.5,
          width: 245,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffE5E5E5),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
            color: whiteColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/$image.png'),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText.h4_grey(company),
                      ],
                    ),
                    SizedBox(
                      width: 32,
                      height: 32,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: whiteColor,
                            elevation: 0,
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Color(0xffE5E5E5),
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.all(8)),
                        onPressed: () {},
                        child: Icon(
                          Icons.favorite_border_outlined,
                          size: 16,
                          color: blackColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText.h4_grey('$level Level'),
                    SizedBox(
                      height: 4,
                    ),
                    CustomText.h3(project),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: SvgPicture.asset(
                              'assets/icons/user.svg',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        CustomText.h4('$percentage_match Match'),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: secondaryColor.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.asset(
                              'assets/icons/ticket.svg',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        CustomText.h4('$slot Slot Remaining'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
