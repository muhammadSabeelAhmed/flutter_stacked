class CounterService {
  var counterValue = 0;

  addCounterValue() {
    counterValue++;
    print(counterValue);
  }

  getCounterValue() {
    return counterValue;
  }
}
