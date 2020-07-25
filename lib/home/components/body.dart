import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipeapp/constants.dart';
import 'package:recipeapp/home/homescreen.dart';
import 'package:recipeapp/models/Recipebundle.dart';
import 'package:recipeapp/sizeconfig.dart';
import 'categories.dart';
import 'recipebundldecard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Categories(),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
              child: GridView.builder(
                  itemCount: recipeBundles.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      childAspectRatio: 1.65,
                      crossAxisSpacing:SizeConfig.orientation == Orientation.landscape ? SizeConfig.defaultSize * 2  : 0 ,
                      crossAxisCount: SizeConfig.orientation == Orientation.landscape ? 2 : 1),
                  itemBuilder: (context, index) => RecipeBundlecard(recipeBundle: recipeBundles[index],)),
            ),
          )
        ],
      ),
    );
  }
}
