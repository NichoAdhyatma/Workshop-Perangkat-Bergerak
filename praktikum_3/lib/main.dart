import 'package:flutter/material.dart';
import 'package:praktikum_3/providers/done_tourism_provider.dart';
import 'package:praktikum_3/screens/main_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData,
        home: const MainScreen(),
      ),
    );
  }
}
