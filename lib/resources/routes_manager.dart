 
import 'package:flutter/material.dart';
import 'package:tadjelsafa/main.dart';
import 'package:tadjelsafa/view/authentification/forgetPassword.dart';
import 'package:tadjelsafa/view/authentification/login.dart';
import 'package:tadjelsafa/view/authentification/register.dart';
import 'package:tadjelsafa/view/introductory/introductory.dart';
import 'package:tadjelsafa/view/notification/notification.dart';
import 'package:tadjelsafa/view/sideMenu/aboutUs/about_us.dart';
import 'package:tadjelsafa/view/sideMenu/contactUs/contactUs.dart';
import 'package:tadjelsafa/view/sideMenu/editProfile/edit_profile.dart';
import 'package:tadjelsafa/view/sideMenu/myDocuments/my_documents.dart';
import 'package:tadjelsafa/view/sideMenu/propertyinfo/property_info.dart';
import 'package:tadjelsafa/view/sideMenu/termsAndConditions/termsAndConditions.dart';
import 'package:tadjelsafa/view/splash/splash.dart'; 
class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
  static const String myDocumentsRoute = "/myDocuments";
  static const String contactUsRoute = "/contactUs";
  static const String aboutUsRoute = "/aboutUs";
  static const String editProfileRoute = "/editProfile";
  static const String introductoryRoute = "/introductory";
  static const String notificationsRoute = "/notifications";
  static const String termsAndConditionsRoute = "/termsAndConditions"; 
  static const String propertyInfoRoute = "/propertyInfo"; 
}

class RouteGenerator {
static Route<dynamic> getRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Routes.splashRoute:
      return MaterialPageRoute(builder: (_) => Splash());
    case Routes.loginRoute: 
      return MaterialPageRoute(builder: (_) => Login()); 
    case Routes.registerRoute: 
      return MaterialPageRoute(builder: (_) => Register());
    case Routes.forgotPasswordRoute: 
      return MaterialPageRoute(builder: (_) => Forgetpassword());
    case Routes.mainRoute: 
      return MaterialPageRoute(builder: (_) => MyApp()); 
    case Routes.myDocumentsRoute:
      return MaterialPageRoute(builder: (_) => MyDocuments());
    case Routes.contactUsRoute:
      return MaterialPageRoute(builder: (_) => ContactUs());
    case Routes.aboutUsRoute:
      return MaterialPageRoute(builder: (_) => AboutUs());
    case Routes.editProfileRoute:
      return MaterialPageRoute(builder: (_) => EditProfile());
    case Routes.introductoryRoute:
      return MaterialPageRoute(builder: (_) => Introductory()); 
    case Routes.notificationsRoute:
      return MaterialPageRoute(builder: (_) => Notifications());
    case Routes.termsAndConditionsRoute:
      return MaterialPageRoute(builder: (_) => Termsandconditions()); 
      case Routes.propertyInfoRoute:
        return MaterialPageRoute(builder: (_) => PropertyInfo());
    default:
      return unDefinedRoute();
  }
}


  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text("No Route Found"),
              ),
              body: Center(child: Text("No Route Found")),
            ));
  }
}