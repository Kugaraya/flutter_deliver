library intro_view;

import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import 'intro_view_model.dart';

part 'intro_mobile.dart';

class IntroView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    IntroViewModel viewModel = IntroViewModel();
    return ViewModelProvider<IntroViewModel>.withConsumer(
      viewModelBuilder: () => viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _IntroMobile(viewModel),
        );
      }
    );
  }
}
