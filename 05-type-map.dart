/**
 * Map 集合
 *
 */

import 'dart:convert';

main() {
  // 定义一个 map
  var map = new Map();
  map['name'] = 'YaoDao';
  map['birthday'] = '1987-08-08';
  map['address'] = '山东省泰安市东平县';
  map['mobile'] = '136-2844-5044';
  print('$map\n');

  // 添加键值对
  map['sex'] = 'man';
  print('$map\n');

  // 删除键值对
  map.remove('sex');
  print('$map\n');

  // 获取内容
  print('${map.keys}\n');
  print('${map.values}\n');
  print('${map.length}\n');

  // JSON 字符串创建对象
  var jsonStr = '{"data":[],"meta":{"code":200,"msg":"JSONArray","res_style":"ok"}}';
  var jsonData = jsonDecode(jsonStr);
  print(jsonData.length);
  print(jsonData['meta']['code']);


}
