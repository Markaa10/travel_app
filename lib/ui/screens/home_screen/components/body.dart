import 'package:flutter/material.dart';
import 'package:travel_app/ui/screens/home_screen/components/popular_destinations.dart';
import 'package:travel_app/ui/screens/home_screen/components/recommended_destinations.dart';
import 'package:travel_app/ui/size_config.dart';
import 'package:travel_app/ui/styles.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.036),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Choose your',
                style: TextStyle(
                  color: AppColors.ktextColor,
                  fontSize: getProportionateScreenWidth(16),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/aleesh.jpg',
                  width: getProportionateScreenWidth(32),
                  height: getProportionateScreenHeight(32),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.003),
          Text(
            'Destination',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(24),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.015),
          _buildSearchTextContainer(),
          SizedBox(height: SizeConfig.screenHeight * 0.025),
          Text(
            'Popular',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(19),
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: PopularDestinations()),
          SizedBox(height: SizeConfig.screenHeight * 0.025),
          Text(
            'Recommended',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(19),
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: RecommendedDestinations()),
        ],
      ),
    );
  }

  Container _buildSearchTextContainer() {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.ktextFieldColor,
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(10))),
      child: TextFormField(
        style: TextStyle(
          color: AppColors.ksecondaryColor,
          fontSize: getProportionateScreenWidth(13),
        ),
        decoration: InputDecoration(
          hintText: 'Where do you want to visit?',
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.filter_list),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(12.26),
            vertical: getProportionateScreenHeight(14.67),
          ),
        ),
      ),
    );
  }
}
