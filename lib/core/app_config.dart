import 'package:tabiah/core/app_flavor.dart';

abstract class AppConfig {
  AppConfig._({required this.flavor});

  final AppFlavor flavor;
}

class ProdConfig extends AppConfig {
  ProdConfig() : super._(flavor: AppFlavor.prod);
}

class DevConfig extends AppConfig {
  DevConfig() : super._(flavor: AppFlavor.dev);
}