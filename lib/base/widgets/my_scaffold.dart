import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  MyScaffold({
    required this.body,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ,
      body: SafeArea(
        child: body,
      ),
    );
  }
}
