import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/providers/home_provider.dart';
import 'package:provider_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        title: 'Provider App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        home: const HomePage(),
      ),
    );
  }
}
