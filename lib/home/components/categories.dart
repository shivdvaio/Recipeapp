import 'package:flutter/material.dart';
import 'package:recipeapp/home/homescreen.dart';
import 'package:recipeapp/sizeconfig.dart';
import 'package:recipeapp/constants.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> Categories = ["All", "Indian", "Mexican", "Italian", "Chineese"];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2),
      child: SizedBox(
        height: SizeConfig.defaultSize * 3.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Categories.length,
            itemBuilder: (context, index) => buildCategoriesitem(index)),
      ),
    );
  }

  Widget buildCategoriesitem(int index) => GestureDetector(
    onTap: () {
      setState(() {
        selectedindex = index;
      });
    },
    child: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize * 2,
          vertical: SizeConfig.defaultSize * 0.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 1.6),
          color: selectedindex == index
              ? Color(0xFFEFF3EE)
              : Colors.transparent),
      child: Text(
        Categories[index],
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color:
            selectedindex == index ? kPrimaryColor : Color(0xFFC2C2B5)),
      ),
    ),
  );
}
