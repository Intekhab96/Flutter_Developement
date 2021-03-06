import 'package:flutter/material.dart';
import '/widgets/drawer_option/drawer_option.dart';
import '/responsive/screen_type_layout.dart';
import '/widgets/app_drawer/app_drawer_tabler.dart';
import '/responsive/orientation_layout.dart';
import '/widgets/app_drawer/app_drawer_mobile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const AppDrawerMobileLayout(),
      tablet: OrientationLayout(
        portrait: const AppDrawerTabletPortrait(),
        landscape: const AppDrawerTabletLandscape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(
        title: 'Images',
        iconData: Icons.image,
      ),
      DrawerOption(
        title: 'Reports',
        iconData: Icons.photo_filter,
      ),
      DrawerOption(
        title: 'Incidents',
        iconData: Icons.message,
      ),
      DrawerOption(
        title: 'Settings',
        iconData: Icons.settings,
      ),
    ];
  }
}
