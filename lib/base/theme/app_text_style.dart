import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle normal(BuildContext context, {required double size, Color color = Colors.black, double lineHeight = 1.2}) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: size, fontWeight: FontWeight.w600, color: color, height: lineHeight);
  }

  static TextStyle w500(BuildContext context, {required double size, Color color = Colors.black, double lineHeight = 1.2}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: size, fontWeight: FontWeight.w500, color: color, height: lineHeight);
  }

  static TextStyle w700(BuildContext context, {required double size, Color color = Colors.black, double lineHeight = 1.2}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: size, fontWeight: FontWeight.w700, color: color, height: lineHeight);
  }

  static TextStyle w900(BuildContext context, {required double size, Color color = Colors.black, double lineHeight = 1.2}) {
    return Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: size, fontWeight: FontWeight.w900, color: color, height: lineHeight);
  }
}
