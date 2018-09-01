/**
 * Dart 文件可分为【执行入口】和【类】
 * 使用 //来注释。同时 /* ...*/也可以用来注释;
 * 使用 2 个空格来缩进;
 * 没有public ，protected 和 private的概念;
 * 指定数据类型和编译时的常量，可以提高运行速度;
 * 持顶级的变量定义；
 * 严格区分 expression 和 statement；
 * 使用 ; 来分割语句；
 * 使用 == 比对两端的值，如：a == b
 */

import './TestClass.dart';

// Dart 程序有统一的程序入口: main()
// 注意：程序和类不一样，当前文件就是一个单页程序。
main() {
  // var 定义了一个变量，但是没有指定特定的数据类型
  var number = 22;

  // 如果不确定变量的类型，也可以使用 var 声明
  var list = [1, 2, 3, 4, 5];
  var test = new TestClass('Yaodao');
  print(test.say(list.toString()));

  var test2 = new TestClass('ManMo');
  print(test2.say('电音无线'));

  var test3 = new TestClass('ManMo');
  test3.trueName = 'Huluwa';
  print(test3.say('HaHa,'));

  // print 打印操作
  print('输出内容');

  // 可以直接打印出数组
  var arr = ['a', 'B', 'c', 4];
  print('输出数组：$arr');

  var obj = new Map();
  obj['name'] = 'YaoDao';
  obj['age'] = '31';
  obj['birthday'] = '1987-08-08';
  print('输出 Map 对象：$obj');
}
