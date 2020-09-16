import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/popular.dart';
import 'package:travel_app/models/recommended.dart';
import 'package:travel_app/ui/size_config.dart';

class RecommendedDestinations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: recommended_destinations.length,
      itemBuilder: (context, index) {
        Recommended recommended = recommended_destinations[index];
        return Container(
          margin: EdgeInsets.only(right: getProportionateScreenWidth(25)),
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenHeight(21)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(10)),
                child: Image.asset(
                  recommended.imageUrl,
                  width: getProportionateScreenWidth(140),
                  height: getProportionateScreenHeight(146),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.007),
              Text(
                recommended.location,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.006),
              RichText(
                text: TextSpan(
                  text: recommended.starTimes,
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' ${recommended.rating}',
                    )
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.0044),
              Text(
                '\$${recommended.price}',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(17),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
