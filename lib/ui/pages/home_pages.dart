import 'package:flutter/material.dart';
import 'package:travel_app_flutter/models/category.dart';
import 'package:travel_app_flutter/models/countries.dart';
import 'package:travel_app_flutter/models/events.dart';
import 'package:travel_app_flutter/shared/theme.dart';
import 'package:travel_app_flutter/ui/pages/detail_page.dart';
import 'package:travel_app_flutter/ui/widgets/bottom_navbar_item.dart';
import 'package:travel_app_flutter/ui/widgets/category_widgets.dart';
import 'package:travel_app_flutter/ui/widgets/countries_widgets.dart';
import 'package:travel_app_flutter/ui/widgets/events_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategoryIndex = 1;
  int selectedIndex;

  @override
  void initState() {
    selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Note: Header
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: edgs, right: edgs, top: edgs),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(
                          width: 50,
                          height: 50,
                          image: AssetImage(
                            "assets/profile_image.png",
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello Bimo,",
                              style: darkPurpelFontStyle,
                            ),
                            Text(
                              "Good Morning",
                              style: darkPurpelFontStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      iconSize: 20,
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // Note: Title
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edgs),
                child: Text(
                  "Let’s enjoy your \nVacation",
                  style: darkPurpelFontStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // Note: Category
              Container(
                height: 22,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mockCategory.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        left: index == 0 ? edgs : edgs,
                        right: index == mockCategory.length - 1 ? 30 : 0,
                      ),
                      child: CategoryWidgets(
                        category: mockCategory[index],
                        isSelected:
                            selectedCategoryIndex == mockCategory[index].id,
                        onTap: () {
                          setState(() {
                            selectedCategoryIndex = mockCategory[index].id;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // Note: Popular Countries
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edgs),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Countries",
                      style: blackFontStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("pressed");
                      },
                      child: Text(
                        "See All",
                        style: greyFontStyle.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff808080),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 170,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mockCountries.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              countries: mockCountries[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? edgs : 16,
                          right: index == mockCountries.length - 1 ? edgs : 0,
                        ),
                        child: CountriesWidgets(
                          countries: mockCountries[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // Note: Ongoing Events
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edgs),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ongoing Events",
                      style: blackFontStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("pressed");
                      },
                      child: Text(
                        "See All",
                        style: greyFontStyle.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff808080),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 205,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mockEvents.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        left: index == 0 ? edgs : edgs,
                        right: index == mockEvents.length - 1 ? edgs : 0,
                      ),
                      child: EventsWidgets(
                        events: mockEvents[index],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 68,
        width: MediaQuery.of(context).size.width - (2 * edgs),
        margin: EdgeInsets.symmetric(horizontal: edgs),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xffF4F5F6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavbarItem(
              iconData: Icons.home,
              title: "Home",
              isSelected: selectedIndex == 0,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            BottomNavbarItem(
              iconData: Icons.notifications,
              title: "Notif",
              isSelected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            BottomNavbarItem(
              iconData: Icons.menu,
              title: "Menu",
              isSelected: selectedIndex == 2,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            BottomNavbarItem(
              iconData: Icons.settings,
              title: "Settings",
              isSelected: selectedIndex == 3,
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
