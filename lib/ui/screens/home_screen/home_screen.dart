import 'package:flutter/material.dart';
import 'package:travel_app/ui/size_config.dart';
import 'package:travel_app/ui/styles.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.kprimaryColor,
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(28)),
        child: Body(),
      ),
    );
  }
}
