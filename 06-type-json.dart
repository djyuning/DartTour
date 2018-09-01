/**
 * JSON
 */
import 'dart:convert';
import 'dart:math';

main() {
  var JSON = json;

  var jsonData = JSON.decode('{"x":1, "y":2}');
  print(jsonData);

  var p1 = new Point(2, 2);
  jsonData['x'] = p1.x;
  print(jsonData);

}
