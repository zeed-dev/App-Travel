import 'package:flutter/material.dart';

import 'package:travel_app_flutter/shared/theme.dart';

class BottomNavbarItem extends StatefulWidget {
  final String title;
  final IconData iconData;
  final bool isSelected;
  final Function onTap;

  const BottomNavbarItem({
    this.title,
    this.iconData,
    this.isSelected,
    this.onTap,
  });

  @override
  _BottomNavbarItemState createState() => _BottomNavbarItemState();
}

class _BottomNavbarItemState extends State<BottomNavbarItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap();
        }
      },
      child: Row(
        children: [
          Container(
            height: 47,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: widget.isSelected ? Color(0xffE7E5FD) : Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  widget.iconData,
                  color: widget.isSelected ? purpelColor : Color(0xffD5D5E1),
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                widget.isSelected
                    ? Text(
                        widget.title,
                        style: darkPurpelFontStyle.copyWith(
                          color: purpelColor,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
