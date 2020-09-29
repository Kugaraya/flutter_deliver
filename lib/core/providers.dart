import 'package:flutter_deliver/core/providers/BottomNavBarModel.dart';
import 'package:flutter_deliver/core/providers/ThemeModel.dart';
import 'package:provider/single_child_widget.dart';

import '../core/locator.dart';
import '../core/services/navigator_service.dart';
import 'package:provider/provider.dart';

class ProviderInjector {
  static List<SingleChildWidget> providers = [
    ..._independentServices,
    ..._dependentServices,
    ..._consumableServices,
  ];

  static List<SingleChildWidget> _independentServices = [
    Provider.value(value: locator<NavigatorService>()),
  ];

  static List<SingleChildWidget> _dependentServices = [];
  
  static List<SingleChildWidget> _consumableServices = [
    ChangeNotifierProvider<ThemeModel>(
      create: (_) => ThemeModel(),
    ),
    ChangeNotifierProvider<BottomNavigationBarProvider>(
      create: (_) => BottomNavigationBarProvider(),
    ),
  ];
}
