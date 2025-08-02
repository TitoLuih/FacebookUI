import 'package:flutter/material.dart';
import 'facebook_ui/facebook_ui.dart';
import 'package:device_preview/device_preview.dart';

// If you put it on enable you could use it to change devices more easily and test yor changes
// and if it is on false it would be normal
void main() {
  runApp(DevicePreview(builder: (_)=> MyApp(), enabled: false));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: FacebookUi(),
      theme: ThemeData(fontFamily: 'Nunito')
    );
     
  }
}


