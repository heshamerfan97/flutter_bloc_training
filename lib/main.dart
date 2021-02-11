import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_training/Screens/SplashScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      //darkTheme: AppTheme.darkTheme,
      locale: AppLanguage.defaultLanguage,
      localizationsDelegates: [
        Translate.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLanguage.supportLanguage,
      routes: Routes.routes,
      home: BlocBuilder<ApplicationBloc, ApplicationState>(
          builder: (context, app) {
            if(app is ApplicationSetupCompleted)
              return AuthenticationScreens();
            else
              return SplashScreen();
          }
      ),
    );
  }
}

