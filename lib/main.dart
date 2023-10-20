import 'future_delay.dart';

void main() {
  futureDelay();
}

final Stopwatch stopwatch = Stopwatch();

Future<void> futureForEachTest() async {
  List<int> valueList = [1, 2, 3];
  stopwatch.start();

  List<Future<void>> futures = valueList.map((element) async {
    if (element == 1) {
      print(await delay1000());
    } else if (element == 2) {
      print(await delay2000());
    } else if (element == 3) {
      print(await delay3000());
    }
  }).toList();

  await Future.wait<void>(futures);

  print('doSomething() executed in ${stopwatch.elapsed}');
  stopwatch
    ..stop()
    ..reset();
}

Future<String> delay1000() async {
  await Future.delayed(const Duration(milliseconds: 1000));
  print('delay1000 time : ${stopwatch.elapsed}');
  return "delay1000 result";
}

Future<String> delay2000() async {
  await Future.delayed(const Duration(milliseconds: 2000));
  print('delay2000 time : ${stopwatch.elapsed}');
  return "delay2000 result";
}

Future<String> delay3000() async {
  await Future.delayed(const Duration(milliseconds: 3000));
  print('delay3000 time : ${stopwatch.elapsed}');
  return "delay3000 result";
}
