import 'package:learn/apps/school/model/service_model.dart';
import 'package:learn/apps/school/presentation/widget/BigText.dart';
import 'package:learn/apps/school/presentation/widget/SmalText.dart';
import 'package:learn/apps/school/utils/app_color.dart';
import 'package:learn/util/dimension.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  const ServiceCard({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: service.name!,
          size: Dimensions.fontSize20,
          color: AppColors.mainColor,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        SmallText(
          text: service.name!,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        )
      ],
    );
  }
}
