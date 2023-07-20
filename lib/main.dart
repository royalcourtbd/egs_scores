import 'package:egs_scores/egs_scores.dart';
import 'package:flutter/material.dart';

void main() {
  _initialiseServices();
  runApp(const EgsScores());
}

Future<void> _initialiseServices() async {
  WidgetsFlutterBinding.ensureInitialized();
}
