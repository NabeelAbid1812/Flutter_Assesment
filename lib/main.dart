import 'package:assignment/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType){
         SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white, // navigation bar color
        statusBarColor: Colors.white, // status bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
    ));
        return GetMaterialApp(
          title: 'Flutter Demo',
          // theme: ThemeData(
          //   useMaterial3: true,
            
          // ),
         
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      }

    );
  }
}

