import 'package:education_webside/screens/Homepage.dart';
import 'package:education_webside/screens/JavaPoint.dart';
import 'package:education_webside/screens/TutorialsPoint.dart';
import 'package:education_webside/screens/W3school.dart';
import 'package:education_webside/screens/Wikipedia.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const HomePage(),
      'Wikipedia': (context) => const Wikipedia(),
      'W3schools': (context) => const W3schools(),
      'JavaPoint': (context) => const JavaPoint(),
      'TutorialsPoints': (context) => const TutorialsPoints(),
    }),
  );
}
