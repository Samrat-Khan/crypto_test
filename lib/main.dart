import 'package:crypto_proj/controller/bottom_nav_bar_controller.dart';
import 'package:crypto_proj/controller/exchange_data_controller.dart';
import 'package:crypto_proj/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

GlobalKey<ScaffoldMessengerState> snackKey =
    GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomnavbarController>(
            create: (context) => BottomnavbarController()),
        ChangeNotifierProvider<ExchangeDataController>(
            create: (context) => ExchangeDataController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: snackKey,
        home: const HomePage(),
      ),
    );
  }
}
