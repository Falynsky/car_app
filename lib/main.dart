import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/features/car_list/presentation/pages/car_list_page.dart';
import 'package:flutter/material.dart';
import 'package:injecteo/injecteo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: const Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cars App'),
        ),
        body: const CarListPage(),
      ),
    );
  }
}
