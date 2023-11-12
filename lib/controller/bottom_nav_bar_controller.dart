import 'package:crypto_proj/constants/app_string.dart';
import 'package:crypto_proj/views/exchange_page/exchange_page.dart';
import 'package:flutter/material.dart';

class BottomnavbarController extends ChangeNotifier {
  final List<Widget> nabBarScreens = [
    const Center(child: Text(AppString.shop)),
    const ExchangePage(),
    const Center(child: Text(AppString.global)),
    const Center(child: Text(AppString.launchpad)),
    const Center(child: Text(AppString.wallet)),
  ];
  final List<NavbarData> navBarItems = [
    NavbarData(label: AppString.shop, icon: Icons.currency_pound_outlined),
    NavbarData(label: AppString.exchange, icon: Icons.currency_exchange),
    NavbarData(label: AppString.global, icon: Icons.earbuds, isLarge: true),
    NavbarData(label: AppString.launchpad, icon: Icons.rocket_launch),
    NavbarData(label: AppString.wallet, icon: Icons.wallet),
  ];

  int selectedIndex = 1;

  void changePage(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}

class NavbarData {
  final String label;
  final IconData icon;
  final bool isLarge;

  NavbarData({
    required this.label,
    required this.icon,
    this.isLarge = false,
  });
}
