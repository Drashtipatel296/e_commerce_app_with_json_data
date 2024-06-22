import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce_app_with_json_data/provider/data_provider.dart';
import 'package:e_commerce_app_with_json_data/screens/home/home_screen.dart';
import 'package:e_commerce_app_with_json_data/screens/product/product_screen.dart';
import 'package:e_commerce_app_with_json_data/screens/splash/splash_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: const CosmeticProductApp(),
    ),
  );
}

class CosmeticProductApp extends StatelessWidget {
  const CosmeticProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/product') {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) {
              return ProductScreen(
                productIndex: args['productIndex'],
                dataModel: args['dataModel'],
              );
            },
          );
        }
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const SplashScreen());
          case '/home':
            return MaterialPageRoute(builder: (context) => const HomeScreen());
          default:
            return null;
        }
      },
    );
  }
}
