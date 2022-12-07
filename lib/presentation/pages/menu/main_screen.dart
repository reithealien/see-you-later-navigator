import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:seeyoulaternavigator/presentation/pages/menu/bottom_tab_bar.dart';
import 'package:seeyoulaternavigator/presentation/router/router.gr.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        StarWarsRouter(),
        LotrRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => BottomTabBar(
        selectedIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
      ),
    );
  }
}
