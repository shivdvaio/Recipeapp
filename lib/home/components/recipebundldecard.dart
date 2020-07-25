import 'package:recipeapp/main.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipeapp/sizeconfig.dart';
import 'package:recipeapp/models/Recipebundle.dart';

class RecipeBundlecard extends StatelessWidget {

  final RecipeBundle recipeBundle;

 RecipeBundlecard({this.recipeBundle});

  double defaultsize = SizeConfig.defaultSize;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        margin: EdgeInsets.all(defaultsize * 1),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultsize * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      recipeBundle.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white, fontSize: defaultsize * 2.2),
                    ),
                    SizedBox(
                      height: defaultsize * 0.5,
                    ),
                    Text(
                      recipeBundle.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                    Spacer(),
                    buildRow(defaultsize,
                        iconSrc: "assets/icons/chef.svg",
                        text: "${recipeBundle.chefs} Chefs"),
                    SizedBox(
                      height: defaultsize * 0.5,
                    ),
                    buildRow(defaultsize,
                        iconSrc: "assets/icons/pot.svg",
                        text: "${recipeBundle.recipes}  Recipes")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize * 0.5,
            ),
            AspectRatio(
                aspectRatio: 0.75,
                child: Image.asset(
                  recipeBundles[0].imageSrc,
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                )),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultsize * 1.8),
            color: recipeBundle.color),
      ),
    );
  }

  Row buildRow(double defaultsize, {String iconSrc, String text}) {
    return Row(
      children: [
        SvgPicture.asset(iconSrc),
        SizedBox(
          width: defaultsize,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
