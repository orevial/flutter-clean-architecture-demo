import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_clean_architecture_demo/app.dart';
import 'package:flutter_clean_architecture_demo/di/di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureAllPackagesDependencies(envId: 'prod');
  runApp(const CleanArchitectureDemoApp());
}
