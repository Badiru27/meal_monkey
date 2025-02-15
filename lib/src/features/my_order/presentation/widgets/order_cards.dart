import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_textstyles.dart';

class OrderCard extends StatelessWidget {
  final String foodName;
  final String foodDescription;
  final String foodRating;
  final String noOfRatings;
  final String foodImage;
  final String location;
  const OrderCard({
    Key? key,
    required this.foodName,
    required this.foodDescription,
    required this.foodRating,
    required this.noOfRatings,
    required this.foodImage,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            foodImage,
            fit: BoxFit.cover,
            height: 70,
            width: 70,
          ),
        ),
        AppSpacing.horizontalSpaceLarge,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(foodName, style: AppTextStyle.headerTwoTextStyle),
            AppSpacing.verticalSpaceTiny,
            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 15,
                  color: AppColors.orange,
                ),
                Text(
                  foodRating,
                  style: AppTextStyle.bodyTwoTextStyle
                      .copyWith(color: AppColors.orange),
                ),
                AppSpacing.horizontalSpaceSmall,
                Text(
                  '($noOfRatings Ratings)',
                  style: AppTextStyle.bodyOneTextStyle
                      .copyWith(color: AppColors.greyColor),
                ),
              ],
            ),
            AppSpacing.verticalSpaceTiny,
            Text(
              'Burger . $foodDescription',
              style: AppTextStyle.bodyTwoTextStyle.copyWith(
                color: AppColors.greyColor,
              ),
            ),
            AppSpacing.verticalSpaceTiny,
            Row(
              children: [
                const Icon(
                  Icons.map_outlined,
                  size: 15,
                  color: AppColors.orange,
                ),
                AppSpacing.horizontalSpaceSmall,
                Text(
                  location,
                  style: AppTextStyle.bodyOneTextStyle
                      .copyWith(color: AppColors.greyColor),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
