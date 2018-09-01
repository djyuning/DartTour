/**
 * 流程控制语句
 * Dart 可用的流程控制语句：

    if and else
    for loops
    while and do-while loops
    break and continue
    switch and case
    assert
    try-catch and throw
 *
 */

isRaining() {
  return false;
}

isSnowing() {
  return true;
}

main() {
  // is esle
  if (isRaining()) {
    print('正在下雨');
  } else if (isSnowing()) {
    print('正在下雪');
  } else {
    print('大好晴天');
  }

  // for 循环
  var message = new StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  // forEach
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x);
  }

  var map = new Map();
  map['username'] = 'Dao';
  map['year'] = '1987';
  map['month'] = '8';
  map['sex'] = 'man';

  print(map.keys);

  print('================');

  // while
  var _temp = 0;
  while (_temp < 5) {
    print("this is loop: " + (_temp).toString());
    _temp++;
  }
  print('================');

  // do...while
  var _tempTwo = 5;
  do {
    print("第二个循环: " + (_tempTwo).toString());
    _tempTwo -= 1;
  } while (_tempTwo >= 1);
  print('================');

  // 终止循环
  var _tempThree = 0;
  while (_tempThree < 10) {
    if (_tempThree == 3) break;
    print("循环退出: " + (_tempThree).toString());
    _tempThree++;
  }
  print('================');

  // 转到下个循环
  var _tempFour = 0;
  while (_tempFour < 5) {
    _tempFour++;
    if (_tempFour == 3) continue;
    print("循环跳过: " + (_tempFour).toString());
  }

  // 断言(assert)
  var _tempFive = 0;
  while (_tempFive < 5) {
    if (_tempFive == 3) {
      //throw new FormatException('出错了');
      //throw '出错了';
    }
    print('断言：$_tempFive');
    _tempFive++;
  }

  // 捕获错误
  var num = '1.5';
  try {
    //print(int.parse(num));
  } catch (e, s) {
    print('出错了：$e');
    print(s);
    throw e;
  }

  // Finally 无论对错都执行
  try {
    print(int.parse(num));
  } catch (e) {
    print('出错了：$e');
  } finally {
    print('OK');
  }
}
