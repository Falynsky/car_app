import 'package:flutter/material.dart';

void main() {
  // final CarListService carListService = CarListService.create();
  // final Future<Response<List<CarModel>>> cars = carListService.getCars();
  // cars.then((Response<List<CarModel>> value) {
  //   final List<CarModel> body = value.body ?? <CarModel>[];
  //   final CarModel carModel = body.first;
  //   print(carModel);
  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Text('Flutter Demo Home Page'),
    );
  }
}
