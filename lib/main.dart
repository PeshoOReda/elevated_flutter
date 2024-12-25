import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'my_app/my_app.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}
