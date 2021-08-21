///imprt

import 'package:flutter/material.dart';

//PAGES //PAGINAS
import 'package:app/src/pages/forgot_password.dart';
import 'package:app/src/pages/welcome_page.dart';
import 'package:app/src/pages/login_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword()
};
