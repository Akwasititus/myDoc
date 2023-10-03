import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth/sign_up.dart';

import 'package:device_preview_screenshot/device_preview_screenshot.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
      tools: const [
        ...DevicePreview.defaultTools,
        DevicePreviewScreenshot(
          multipleScreenshots: true),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Doctor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignupPage(),
    );
  }
}

