import 'dart:io';

import 'package:flutter_bloc_training/Configurations/Language.dart';
import 'package:flutter_bloc_training/Models/User.dart';
import 'package:shared_preferences/shared_preferences.dart';


///This class will be used to contain all data used across the app

class Application{
  static bool debug = true;
  static String version = '1.0.0';
  static SharedPreferences preferences;
  static String deviceType;
  static User user;
  static String accessToken;
  static bool isUserAuthenticated = false;
  static String FCMToken;
  static bool isEnglish = AppLanguage.defaultLanguage.languageCode == 'en';

  ///Singleton factory
  static final Application _instance = Application._internal();

  factory Application() {
    return _instance;
  }

  Application._internal();
}