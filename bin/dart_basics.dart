import 'types_demo.dart';
import 'func_demo.dart';
import 'flow_demo.dart';

// dart_basics 入口：统一调用三组示例并输出
void main(List<String> arguments) {
  typesDemo();
  print('');
  funcDemo();
  print('');
  flowDemo();
  print('\n全部示例运行完毕。');
}
