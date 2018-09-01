/**
 * Number 类型
 * int 取值范围：-2^53 to 2^53
 * double 64 位长度的浮点型数据，符合IEEE 754 标准
 *
 * int 和 double 类型都是 num 类型的子类。
 *
 * num 类型包括的操作包括： +, -, *, / 以及位移操作>>.
 *
 * num 类型 有如下常用方法 abs(), ceil()和 floor()。完整的使用方法请参见：dart:math 包的使用说明。
 */

import 'dart:math';

main() {
  // String 转 int
  var one = int.parse('1');
  print(one.runtimeType); // 获取其类型

  // int 转 String
  var two = 25.toString();
  print(two.runtimeType);

  // int 类型不能包含小数点..
  //var three = int.parse('1.2'); // 报错 Invalid radix-10 number

  // double 转 String
  var four = 3.14159;
  String fourStr = four.toString();
  String fourStrTwo = four.toStringAsFixed(2);
  String fourStrThree = four.toStringAsPrecision(2);
  print('$fourStr, $fourStrTwo, $fourStrThree');

  // 随机数
  var random = new Random();
  print('生成一个 0 ~ 100 之间的随机数 ${random.nextInt(100)}');

  // 正弦和余弦
  var sinNum = double.parse(100.toString());
  print('${sin(sinNum)}');
  print('${cos(sinNum)}');

  // 圆周率
  print('圆周率：${pi}');

  // 计算圆锥体积
  var rout = 15; // 直径
  var height = 12; // 椎体高度
  var piUse = double.parse(pi.toStringAsFixed(2));
  // 获取底面半径
  var bottomPlanRout = (rout / 2);
  print('圆锥体积：${(piUse * pow(bottomPlanRout, 2) * 3) + (piUse * pow(bottomPlanRout, 2) * height / 3)}');
}
