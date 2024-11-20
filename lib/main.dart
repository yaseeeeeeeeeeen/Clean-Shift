import 'package:clean_shift/firebase_options.dart';
import 'package:clean_shift/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Machine Test',
      theme: ThemeData(
        fontFamily: "GowunDodum",
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home', // Start with the Login screen
      routes: AppRoutes.getRoutes(),
      home: HomeScreen(),
    );
  }
}
