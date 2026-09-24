// 控制流：分支 if 与 循环 for-in
String gradeOf(int score) {
  if (score >= 90) return '优';
  if (score >= 80) return '良';
  if (score >= 60) return '中';
  return '不及格';
}

void flowDemo() {
  print('=== 5. 控制流：分支与循环 ===');
  for (final score in [95, 83, 64, 40]) {
    print('  score=$score -> ${gradeOf(score)}');
  }
  print('--- for-in 遍历题目 ---');
  for (final i in [1, 2, 3]) {
    print('第$i题');
  }
}
