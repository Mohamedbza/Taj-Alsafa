import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'; 
import 'package:provider/provider.dart';
import 'package:tadjelsafa/view/authentification/forgetPassword.dart';
import 'package:tadjelsafa/view/authentification/login.dart';
import 'package:tadjelsafa/view/home/home.dart';
import 'package:tadjelsafa/view/introductory/introductory.dart';
import 'package:tadjelsafa/view/sideMenu/editProfile/edit_profile.dart'; 
import 'package:tadjelsafa/view/splash/splash.dart';

/// Global cache for preloaded SVGs
final Map<String, String> svgCache = {};

Future<void> main() async {
  // Ensure Flutter binding is initialized first
  WidgetsFlutterBinding.ensureInitialized();
 

  // Initialize SharedPreferences 

  // Initialize services 

  // Run the app
  runApp(
    DevicePreview(
      enabled: kDebugMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 @override
Widget build(BuildContext context) {
  Widget home;

  home = const EditProfile();

  return MediaQuery(
    data: MediaQuery.of(context).copyWith(textScaleFactor: 1), // Set text scaling
    child: MaterialApp(
      useInheritedMediaQuery: true, // Required for DevicePreview
      locale: DevicePreview.locale(context), // Supports locale simulation
      builder: DevicePreview.appBuilder, // Wraps the app with DevicePreview
      debugShowCheckedModeBanner: false,
      home: home,
    ),
  );
}

}
