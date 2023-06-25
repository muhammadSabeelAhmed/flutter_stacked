import 'package:stacked/stacked.dart';
import 'package:stacked_flutter/app/app.locator.dart';
import 'package:stacked_flutter/app/app.router.dart';
import 'package:stacked_flutter/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final counterService = locator<CounterService>();
  final navigationService = locator<NavigationService>();
  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }

  getValue() {
    return counterService.getCounterValue();
  }

  navigateToHome() {
    navigationService.navigateToHomeView();
  }
}
