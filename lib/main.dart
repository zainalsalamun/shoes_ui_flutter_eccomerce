import 'package:flutter/material.dart';
import 'package:shoes_project/pages/cart_page.dart';
import 'package:shoes_project/pages/checkout_page.dart';
import 'package:shoes_project/pages/checkout_succes_page.dart';
import 'package:shoes_project/pages/detail_chat_page.dart';
import 'package:shoes_project/pages/edit_profile_page.dart';
import 'package:shoes_project/pages/home/main_page.dart';
import 'package:shoes_project/pages/product_page.dart';
import 'package:shoes_project/pages/sign_in_page.dart';
import 'package:shoes_project/pages/sign_up_page.dart';
import 'package:shoes_project/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkout-success': (context) => CheckoutSuccessPage(),
      },
    );
  }
}
