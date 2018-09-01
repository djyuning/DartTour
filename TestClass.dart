class TestClass {
  // 定义变量
  String username;
  bool mute = false;

  // ================================================================
  // get()和set()方法是Dart 语言提供的专门用来读取和写入对象的属性的方法。
  // 每一个类的实例，系统都隐式的包含有get()和set() 方法。

  String get trueName => '真实姓名：$username';

  set trueName(String name) => username = '真实姓名：$name';

  // ================================================================

  // 用缓存对象存储每个当前类的实例
  // 初始为空对象
  static final Map<String, TestClass> _cache = <String, TestClass>{};

  // 工厂构造函数
  // 当实现构造函数但是不想每次都创建该类的一个实例的时候使用。
  factory TestClass(String user) {
    if (_cache.containsKey(user)) {
      // 如果从缓存中找到了实例，则直接返回对应的实例
      print('当前存在的实例：$_cache');
      return _cache[user];
    } else {
      // 否则写入缓存
      final test = new TestClass._internal(user);
      _cache[user] = test;
      return test;
    }
  }

  // 构造函数
  TestClass._internal(String username) {
    print('Inited');
    this.username = username;
  }

  // ================================================================

  // 一个很普通的方法
  String say(name) {
    return '$username : 您输入的是：$name，$trueName';
  }

// 缺省参数

}
