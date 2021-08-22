import 'package:covid_tracking_app/pages/home_root/bindings/home_root_binding.dart';
import 'package:covid_tracking_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base/bindings/main_bindings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MainBindings(),
      debugShowCheckedModeBanner: false,
      title: 'CovidTrackingApp',
      theme: ThemeData(
        // Define the default brightness and colors.
        // dividerTheme: DividerTheme.of(context)
        //     .copyWith(color: Palette.commonBorder, thickness: 1),
        primaryColor: Colors.white,
        //accentColor: Palette.secondColor,
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          headline1: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w700,
          ),
          // bodyText1: TextStyle(
          //   color: Palette.textBlack,
          //   fontSize: 16.0,
          // ),
          // subtitle1: TextStyle(
          //   color: Palette.subTextColor,
          //   fontSize: 12,
          // ),
          // bodyText2: TextStyle(
          //   color: Palette.textBlack,
          //   fontSize: 16.0,
          // ),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 16,
          ),
        ),

        // Define the default font family.
        fontFamily: 'Circular',
        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
      ),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
