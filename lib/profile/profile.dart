import 'package:flutter/material.dart';
import 'package:recipeapp/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipeapp/sizeconfig.dart';
import 'package:recipeapp/components/my_bottom_navbar.dart';
import 'package:recipeapp/profile/components/body.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: MybottomNavbar(),
      appBar: buildappbar(),
      body: Body(),
    );
  }

  AppBar buildappbar() {
    return AppBar(
      actions: [
        FlatButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
                fontSize: SizeConfig.defaultSize * 1.6, color: Colors.white),
          ),
        )
      ],
      title: Text("Profile"),
      backgroundColor: kPrimaryColor,
      leading: SizedBox(),
    );
  }
}
