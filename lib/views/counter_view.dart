import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/view_model/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${viewModel.getValue()}",
                    style: TextStyle(fontSize: 40),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.addValue();
                    },
                    child: const Text("Add Counter Value"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.navigateToHome();
                    },
                    child: const Text("Go To Home View"),
                  )
                ],
              ),
            ),
          );
        });
  }
}
