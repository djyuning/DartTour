/**
 * String 字符串
 * Dart 的String 是 UTF-16 编码的一个队列。
 * String 类型可以使用 + 操作;
 *
 */

String sayHello(String name) {
  return 'Hello ' + name;
}

main() {
  // 可以使用 + 操作
  var str = '离离原上草；\n' + '一岁一枯荣。\n' + '野火烧不尽；\n' + '春风吹又生。';
  print(str);

  // 混入变量
  print('\n可以直接在里面书写变量：\n$str');

  // 执行函数
  var name = 'YaoDao';
  print('\n也可以在里面调用某个函数：${sayHello(name)}\n');

  // 文本替换
  var strOld = '天上星，亮晶晶，好像一双双，一双双眼睛，眨呀眨，望呀望，那是童年小伙伴啊~';
  print('指定替换：${strOld.replaceAll('双', '*')}');
  print('列表替换：${strOld.replaceAllMapped(
    new RegExp(r'([双|星|望|眨|晶])', caseSensitive: false),
    (Match m) => new Runes(m.toString().codeUnits.toString()).toString(),
  )}');
}
