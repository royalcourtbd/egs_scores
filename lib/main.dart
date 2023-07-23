import 'package:egs_scores/egs_scores.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const EgsScores());
}

// Future<void> _initialiseServices() async {}
