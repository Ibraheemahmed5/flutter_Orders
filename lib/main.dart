import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nakhla_project/pages/Choices.dart';
import 'package:nakhla_project/pages/Order_page.dart';
import 'package:nakhla_project/pages/post_page.dart';
import 'package:nakhla_project/pages/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(144, 195, 70, 0.9),
    //statusBarColor: Colors.white,


    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Nakhla_gifts',

      home: Splash(),
      //home: Post_page(),
      //home: Choices(),
      //home: Ordert_page(),
    );
  }
}

