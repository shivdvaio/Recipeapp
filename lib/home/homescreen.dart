import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipeapp/sizeconfig.dart';
import 'components/body.dart';
import '';

import 'package:flutter/material.dart';
import 'package:recipeapp/components/my_bottom_navbar.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: Appbar(),
      body: Body(),
      bottomNavigationBar: MybottomNavbar(),


    );
  }

  AppBar Appbar() {
    return AppBar(
      actions: [
        IconButton(
          onPressed: (){

          },
          icon: SvgPicture.asset('assets/icons/search.svg'),

        ),
        SizedBox(width: SizeConfig.defaultSize * 0.5,)

      ],
      centerTitle: true,
      title: Image.asset("assets/images/logo.png"),
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
    );
  }
}

