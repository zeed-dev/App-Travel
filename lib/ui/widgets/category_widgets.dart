import 'package:flutter/material.dart';

import 'package:travel_app_flutter/models/category.dart';
import 'package:travel_app_flutter/shared/theme.dart';

class CategoryWidgets extends StatefulWidget {
  final Category category;
  final Function onTap;
  final bool isSelected;

  const CategoryWidgets({
    this.category,
    this.onTap,
    this.isSelected = false,
  });

  @override
  _CategoryWidgetsState createState() => _CategoryWidgetsState();
}

class _CategoryWidgetsState extends State<CategoryWidgets> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap();
        }
      },
      child: Container(
        height: 22,
        child: Column(
          children: [
            Text(
              widget.category.name,
              style: greyFontStyle.copyWith(
                fontSize: 12,
                color: widget.isSelected ? purpelColor : Color(0xff808080),
                fontWeight:
                    widget.isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 2,
              width: 12,
              color: widget.isSelected ? purpelColor : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
