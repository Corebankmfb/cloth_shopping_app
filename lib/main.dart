import 'package:cloth_shopping_app/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cloth Shopping App',
      //visualDensity: VisualDensity.adaptivePlatformDensity,
      

      initialRoute: Routes.getInitial(),
      //home : Checkout(),
      getPages: Routes.routes,
    );
  }
}