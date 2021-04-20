import 'package:flutter/material.dart';

import 'package:travel_app_flutter/models/countries.dart';
import 'package:travel_app_flutter/shared/theme.dart';

class CountriesWidgets extends StatefulWidget {
  final Countries countries;

  const CountriesWidgets({
    this.countries,
  });

  @override
  _CountriesWidgetsState createState() => _CountriesWidgetsState();
}

class _CountriesWidgetsState extends State<CountriesWidgets> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 170,
        width: 120,
        color: Color(0xffF4F5F6),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.countries.photo,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                widget.countries.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 64,
                          height: 30,
                          child: Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                            ),
                            color: purpelColor,
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              widget.countries.name,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: blackFontStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
