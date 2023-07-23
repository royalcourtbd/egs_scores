import 'package:egs_scores/api/firebase_api.dart';
import 'package:egs_scores/egs_scores.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotifications();
  runApp(const EgsScores());
}

// Future<void> _initialiseServices() async {}
