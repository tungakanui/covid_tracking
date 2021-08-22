import 'package:covid_tracking_app/base/theme/app_colors.dart';
import 'package:covid_tracking_app/base/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../base/extension/string.dart';

class StatsWidget extends StatelessWidget {
  final int total;
  final int? increase;
  final String label;
  final Color color;
  final Color backgroundColor;

  StatsWidget({
    required this.total,
    this.increase,
    required this.label,
    required this.color,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: Get.width / 2 - 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: backgroundColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          increase != null ? Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text("+${increase.toString().formatNoSymbolCurrency}", style: AppTextStyle.w500(context, size: 14, color: color),),
          ) : SizedBox.shrink(),
          Text(total.toString().formatNoSymbolCurrency, style: AppTextStyle.w700(context, size: 18, color: color),),
          const SizedBox(height: 8,),
          Text(label.toUpperCase(), style: AppTextStyle.w500(context, size: 14, color: AppColors.gray),),
        ],
      ),
    );
  }
}
