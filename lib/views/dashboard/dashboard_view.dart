library dashboard_view;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_deliver/core/providers/BottomNavBarModel.dart';
import 'package:flutter_deliver/core/providers/ThemeModel.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'dashboard_view_model.dart';

part 'dashboard_mobile.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DashboardViewModel viewModel = DashboardViewModel();
    return ViewModelProvider<DashboardViewModel>.withConsumer(
      viewModelBuilder: () => viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: Consumer<BottomNavigationBarProvider>(
            builder: (context, provider, __) {
              return _DashboardMobile(viewModel);
            },
          ),
        );
      }
    );
  }
}
