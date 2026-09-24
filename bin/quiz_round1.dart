// TraeCode 对拍练习（第1轮）：5道"预测输出"题
// 范围：空安全 ?. / ?? / !、命名参数、整除 ~/ 与 /
void main() {
  print('--- Q1 (空安全 ?? 与默认) ---');
  String? a;
  String? b = a ?? 'default';
  print(b);

  print('--- Q2 (命名参数 required + 默认值) ---');
  void f({required int x, int y = 10}) => print(x + y);
  f(x: 5);

  print('--- Q3 (插值 / 与 ~/) ---');
  var n = 7;
  print('${n / 2} vs ${n ~/ 2}');

  print('--- Q4 (空断言 ! 运行时抛错) ---');
  try {
    String? s;
    print(s!.length);
  } catch (e) {
    print('抛错: $e');
  }

  print('--- Q5 (空默认 ?? 综合调用) ---');
  String label(String? tag) => tag ?? '无';
  print(label(null));
  print(label('A'));
}
