import 'package:flutter/material.dart';
import "package:kudozka_rider_app/Screen/Map/Map.dart";
import 'package:kudozka_rider_app/Screen/Profile/Profile.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: MapSample(""),
        ),
        TabNavigationItem(
          page: Profile(),
        ),
      ];
}
// TODO Implement this library.
