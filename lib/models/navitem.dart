import 'package:flutter/material.dart';

import 'package:recipeapp/home/homescreen.dart';
import 'package:recipeapp/profile/profile.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({this.id, this.icon, this.destination});

// If there is no destination then it help us
  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

// if we made any changes here than provider package rebuild those navitem
class Navitems  extends ChangeNotifier{

  void changenavindex({int index}){

  selecteditems  = index;
  notifyListeners();

  }
  int selecteditems = 0;
  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "assets/icons/home.svg",
      destination: Homescreen(),
    ),
    NavItem(
      id: 2,
      icon: "assets/icons/list.svg",
    ),
    NavItem(
      id: 3,
      icon: "assets/icons/camera.svg",
    ),
    NavItem(
      id: 4,
      icon: "assets/icons/chef_nav.svg",
    ),
    NavItem(
      id: 5,
      icon: "assets/icons/user.svg",
      destination: Profile()

    ),
  ];
}

