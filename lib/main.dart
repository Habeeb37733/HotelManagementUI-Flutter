import 'package:flutter/material.dart';
import 'package:hotelmngmentui/splash.dart';


import 'addservice.dart';
import 'availability.dart';
import 'checkin.dart';

import 'folio2.dart';
import 'login.dart';
import 'reservation.dart';
import 'home.dart';
import 'mainhomepage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(

    ),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}



