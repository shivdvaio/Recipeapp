

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipeapp/constants.dart';
import 'package:recipeapp/profile/profile.dart';
import 'package:recipeapp/sizeconfig.dart';
import 'package:recipeapp/profile/custemcliper.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultsize = SizeConfig.defaultSize;
    //not understand
    return SingleChildScrollView(
      child: Column(
        children: [
          Info(
            name: "Shiv Pratap Singh",
            email: "Shivpratapcha@gmail.com",
            image: "assets/images/pic.png",
          ),
          SizedBox(height: defaultsize *2,),
        buildInkWell(defaultsize: defaultsize,textname: "Saved Recipes",imgSrC: 'assets/icons/bookmark_fill.svg',function: (){}),
          buildInkWell(defaultsize: defaultsize,textname: "Super Plan",imgSrC: 'assets/icons/chef_color.svg',function: (){}),
          buildInkWell(defaultsize: defaultsize,textname: "Change Language",imgSrC: 'assets/icons/language.svg',function: (){}),
          buildInkWell(defaultsize: defaultsize,textname: "Help",imgSrC: 'assets/icons/info.svg',function: (){}),


        ],
      ),
    );
  }

  InkWell buildInkWell({double defaultsize,String textname,String imgSrC,Function function}) {
    return InkWell(
        onTap: function,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultsize * 2,vertical: defaultsize * 3),
          child: SafeArea(
            child: Row(children: [
              SvgPicture.asset(imgSrC),
              SizedBox(width: defaultsize * 1,),
              Text(textname,style: TextStyle(color: kTextLigntColor,fontSize: defaultsize * 1.6),),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],),
          ),
        ),
      );
  }
}

class Info extends StatelessWidget {
  final String name, email, image;

  Info({this.name, this.email, this.image});

  @override
  Widget build(BuildContext context) {
    double defaultsize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultsize * 24,
      child: Stack(
        children: [
          ClipPath(
            clipper: Custemshape(),
            child: Container(
              height: defaultsize * 15,
              color: kPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: defaultsize * 14,
                  width: defaultsize * 14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.white, width: defaultsize * 0.8),
                      image: DecorationImage(image: AssetImage(image))),
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: defaultsize * 2.2,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: defaultsize / 2),
                Text(
                  email,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Color(0xFF8492A2)),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }

}
