import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/constants.dart';
import 'package:recipeapp/models/navitem.dart';
import 'package:recipeapp/sizeconfig.dart';

class MybottomNavbar extends StatelessWidget {
  double defaultsize = SizeConfig.defaultSize;
  @override
  Widget build(BuildContext context) {
    return Consumer<Navitems>(
      builder: (context, navItems, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: defaultsize * 3),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                navItems.items.length,
                (index) => buildiconNavbar(
                    icon: navItems.items[index].icon,
                    isactive: navItems.selecteditems == index ? true : false,
                    press: () {
                      navItems.changenavindex(index: index);
                      if (navItems.items[index].destinationChecker())
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    navItems.items[index].destination));
                    })),
          ),
        ),
        height: 80,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Color(0xFF4B1A39).withOpacity(0.2),
            offset: Offset(0, -7),
            blurRadius: 30,
          )
        ]),
      ),
    );
  }

  IconButton buildiconNavbar(
      {String icon, Function press, bool isactive = false}) {
    return IconButton(
      icon: SvgPicture.asset(
        icon,
        color: isactive ? kPrimaryColor : Color(0xFFD1D4D4),
      ),
      onPressed: press,
    );
  }
}
