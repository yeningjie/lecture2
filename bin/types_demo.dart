// 变量、内置类型、字符串插值与空安全四件套示例
// 用函数返回 String?，使分析器无法预判其值，从而真实演示 ?. / ?? / !
String? lookupNickname(int id) => id == 1 ? 'hu' : null;

void typesDemo() {
  print('=== 1. 变量与内置类型 ===');
  var title = '第一次作业'; // 类型推断为 String，之后不能再赋其它类型
  int year = 2026;
  double score = 92.5;
  final now = DateTime.now(); // 运行时确定一次，不可再次赋值
  const pi = 3.14159; // 编译期常量
  print('title=$title, year=$year, score=$score');
  print('now=$now, pi=$pi');
  // 字符串插值：变量直接 $，表达式加 ${}
  print('你好，$title，加分后成绩${score + 5}');

  print('\n=== 2. 空安全四件套 ?. / ?? / ! / late ===');
  String? n1 = lookupNickname(2); // 返回 null
  print('n1?.length = ${n1?.length}'); // 安全调用：为 null 则短路返回 null
  print('n1 ?? 未填写 = ${n1 ?? '未填写'}'); // 空默认：左侧为 null 取右侧
  String? n2 = lookupNickname(1); // 返回 'hu'
  print('n2!.length = ${n2!.length}'); // 空断言：断言非 null，为 null 则运行时抛错
  late String token; // 延迟初始化：承诺使用前必赋值
  token = 'abc-123';
  print('late token = $token');

  print('\n=== 3. 整除 ~/ 与 除法 / 的区别 ===');
  print('7 / 2 = ${7 / 2}'); // 3.5 (double)
  print('7 ~/ 2 = ${7 ~/ 2}'); // 3 (int)
}
