import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/popular.dart';
import 'package:travel_app/ui/size_config.dart';

class PopularDestinations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: popular_destinations.length,
      itemBuilder: (context, index) {
        Popular popular = popular_destinations[index];
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
                  popular.imageUrl,
                  width: getProportionateScreenWidth(140),
                  height: getProportionateScreenHeight(146),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.007),
              Text(
                popular.location,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.006),
              RichText(
                text: TextSpan(
                  text: popular.starTimes,
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' ${popular.rating}',
                    )
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.0044),
              Text(
                '\$${popular.price}',
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
