
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart'; 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Fetch onboarding completion status
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isOnboardingCompleted = prefs.getBool('onboardingCompleted') ?? false;

  final purchaseRequestService = PurchaseCourseService(Constants.uri);

  runApp(
    MultiProvider(
      providers: [
        //  ChangeNotifierProvider(create: (_) => ClientProvider()),
        //  ChangeNotifierProvider(create: (_) => CourseProvider()),
         // ChangeNotifierProvider(create: (_) => CoursePurchaseProvider()),
         // ChangeNotifierProvider(create: (_) => NotificationProvider()),
         // ChangeNotifierProvider(create: (_) => PurchaseRequestsADMIN(purchaseRequestService)),
      ],
      child: MyApp(isOnboardingCompleted: isOnboardingCompleted),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isOnboardingCompleted;

  const MyApp({super.key, required this.isOnboardingCompleted});

  @override
  Widget build(BuildContext context) {
    Widget home;

    // Show OnboardingScreen if not completed, otherwise show SplashScreen or HomePage
    if (!isOnboardingCompleted) {
      home = const SplashScreen();
    } else {
      home = Provider.of<ClientProvider>(context, listen: false).client.token.isEmpty ? const SplashScreen() : const HomePage();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home,
    );
  }
}
