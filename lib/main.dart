import 'package:flutter/material.dart';
import 'package:flutter_food_app/Food%20Delivery%20App(foodel)/View/onboard_page.dart';
import 'package:provider/provider.dart';
import 'Food Delivery App(foodel)/Provider/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppOnBoardPage(),
      ),
    );
  }
}
