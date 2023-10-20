void futureDelay() async {
  final Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  print('futureDelay 시작 : ${stopwatch.elapsed}');
  await Future.delayed(const Duration(milliseconds: 1000));
  print('futureDelay 1 : ${stopwatch.elapsed}');
  await Future.delayed(const Duration(milliseconds: 2000));
  print('futureDelay 2 : ${stopwatch.elapsed}');
  await Future.delayed(const Duration(milliseconds: 3000));
  print('futureDelay 끝 : ${stopwatch.elapsed}');
  stopwatch
    ..stop()
    ..reset();

  Future.delayed(
    const Duration(milliseconds: 1000),
    () => print('delay in'),
  ).then(
    (value) => print('delay out'),
  );
}
