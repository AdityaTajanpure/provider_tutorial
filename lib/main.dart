import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/counter_provider.dart';
import 'package:provider_tutorial/providers/shopping_Cart_provider.dart';
import 'package:provider_tutorial/screens/MyMainPage.dart';
import 'package:provider_tutorial/screens/SecondScreen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => ShoppingCart(),
      ),
      ChangeNotifierProvider(
        create: (context) => Counter(),
      ),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => SecondScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
