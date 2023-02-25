import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 39,
      color: Color(0xffEFEEEE),
      thickness: 2,
    );
  }
}
