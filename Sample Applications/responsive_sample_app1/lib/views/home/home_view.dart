import 'package:flutter/material.dart';
import '/views/home/home_view_tablet.dart';
import '/views/home/home_view_mobile.dart';
import '/responsive/orientation_layout.dart';
import '/responsive/screen_type_layout.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: const HomeMobileLandscape(),
      ),
      tablet: const HomeTablet(),
    );
  }
}
