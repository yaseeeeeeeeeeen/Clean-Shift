import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/otp_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/home/service_listing_screen.dart';
import 'screens/cart/cart_screen.dart';
import 'screens/profile/profile_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/login': (context) => const LoginScreen(),
      '/otp': (context) => OtpScreen(),
      '/home': (context) => HomeScreen(),
      '/services': (context) => ServiceListingScreen(),
      '/cart': (context) => CartScreen(),
      '/profile': (context) => ProfileScreen(),
    };
  }
}
