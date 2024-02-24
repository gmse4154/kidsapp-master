import 'package:flutter/material.dart';
import 'package:kids_app/DataStorage/Counting.dart';
import 'package:kids_app/DataStorage/EnglishMonth.dart';
import 'package:kids_app/DataStorage/UrduLetters.dart';
import 'package:kids_app/DataStorage/WeekDays.dart';

import 'DataStorage/Body_Parts.dart';
import 'DataStorage/EnglishAlphas.dart';
import 'Screens/Show_Data.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.deepOrangeAccent,
      ),
      GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.only(top: 90, bottom: 60),
        scrollDirection: Axis.horizontal,
        children: [
          buildContainer("assets/images/pageIcons/ABC.jpg", () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return ShowData(
                data: englishAlphas,
                language: "en-US",
                showLaguageButton: false,
                title: " ABC ",
              );
            }));
          }),
          buildContainer("assets/images/pageIcons/123.jpg", () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return ShowData(
                  data: numbers,
                  language: "en-US",
                  showLaguageButton: true,
                  title: " 123 ");
            }));
          }),
          buildContainer("assets/images/pageIcons/urduAlphas.jpg", () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return ShowData(
                  data: urduAlphas,
                  language: "ur-pk",
                  showLaguageButton: false,
                  title: " ا ب ت ");
            }));
          }),
          buildContainer("assets/images/pageIcons/bodyParts.jpg", () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return ShowData(
                  data: bodyParts,
                  language: "en-US",
                  showLaguageButton: true,
                  title: " Body Parts ");
            }));
          }),
          buildContainer("assets/images/pageIcons/weekDays.jpg", () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return ShowData(
                  data: weekDays,
                  language: "en-US",
                  showLaguageButton: false,
                  title: " Week Days ");
            }));
          }),
          buildContainer("assets/images/pageIcons/monthNames.jpg", () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return ShowData(
                  data: monthNames,
                  language: "en-US",
                  showLaguageButton: false,
                  title: " Month of the Year ");
            }));
          }),
        ],
      )
    ]);
  }

  Widget buildContainer(String path, onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.asset(
            path,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
