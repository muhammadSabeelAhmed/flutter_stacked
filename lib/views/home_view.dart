import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/view_model/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                  Text(
                    "${viewModel.getValue()}",
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ));
        });
  }
}
