import 'package:flutter/material.dart';
import 'ui/products/products_manager.dart';
import 'ui/products/product_detail_screen.dart';
import 'ui/products/product_overview_screen.dart';
import 'ui/products/user_products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey,
        ).copyWith(
          secondary: Colors.deepOrange,
        ),
      ),
    //  home: Scaffold(
    //   appBar: AppBar(
    //     title: const Text('MyShop'),
    //      backgroundColor: Colors.purple,
    //   ),
    //   body: const Center(
    //     child:  Text('Welcome to Myshop'),
    //   ),
    //  ),
         home: const SafeArea(
            child: UserProductsScreen(),
      ),
    );
  }
}
