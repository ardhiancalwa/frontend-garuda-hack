import 'package:flutter/material.dart';

import '../../../infrastructure/theme/text_component.dart';

class DescriptionAIRecomendation extends StatelessWidget {
  DescriptionAIRecomendation({
    super.key,
    required this.title,
    required this.description,
  });

  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.h3(title),
        SizedBox(
          height: 12,
        ),
        CustomText.p(description),
      ],
    );
  }
}
