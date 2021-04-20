import 'package:flutter/material.dart';

import 'package:travel_app_flutter/models/countries.dart';
import 'package:travel_app_flutter/shared/theme.dart';

class DetailPage extends StatelessWidget {
  final Countries countries;

  const DetailPage({
    this.countries,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 430,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      image: DecorationImage(
                        image: AssetImage(countries.photo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(edgs),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edgs),
                child: Text(
                  countries.name,
                  style: blackFontStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: darkPurpelColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: edgs),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconItem(
                      image: "assets/ic_rating.png",
                      data: countries.rate.toString(),
                    ),
                    IconItem(
                      image: "assets/ic_weather.png",
                      data: "${countries.weather.toString()}  \u2103",
                    ),
                    IconItem(
                      image: "assets/ic_date.png",
                      data: countries.date,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edgs),
                child: Text(
                  "Description",
                  style: blackFontStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edgs),
                child: Text(
                  countries.description,
                  style: blackFontStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6A6A6A),
                  ),
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: edgs),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Starting From",
                          style: blackFontStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6A6A6A),
                          ),
                        ),
                        Text(
                          "\$ ${countries.priceStart} - ${countries.priceStop}",
                          style: darkPurpelFontStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: purpelColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Book Now",
                          style: whiteFontStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: purpelColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconItem extends StatelessWidget {
  final String image;
  final String data;

  const IconItem({
    this.data,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          width: 40,
          image: AssetImage(image),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          data,
          style: blackFontStyle.copyWith(
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
