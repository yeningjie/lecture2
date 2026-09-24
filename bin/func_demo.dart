// 函数：命名参数、默认值、required 与箭头函数
int add(int a, int b) {
  return a + b;
}

// 箭头函数：单表达式简写
int add2(int a, int b) => a + b;

// 命名参数：Flutter 组件构造函数的统一风格
void enroll({required String name, int age = 18, String? className}) {
  print('  enroll(name: $name, age: $age, className: $className)');
}

void funcDemo() {
  print('=== 4. 函数与命名参数 ===');
  print('add(2, 3) = ${add(2, 3)}');
  print('add2(2, 3) = ${add2(2, 3)} (箭头函数)');
  // 命名参数调用：必填 name 不能省略，其余可缺省或给默认值
  enroll(name: '李华', className: '2班');
  enroll(name: '张三'); // age 用默认值 18，className 为 null
}
