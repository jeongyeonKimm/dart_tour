void main() {
  var name = '정연'; // String name = '정연';
  name = 'jeongyeon';

  var name2; // dynamic name2;
  name2 = 'jeongyeon';
  name2 = 12;
  name2 = true;

  String? jeongyeon = 'jeongyeon'; // null safety
  jeongyeon = null;
  if (jeongyeon != null) {
    // jeongyeon?.isNotEmpty;
    jeongyeon.isNotEmpty;
  }

  final name3 = 'jeongyeon'; // Final variable

  late final String name4; // Late variable
  // do something, go to api
  name4 = '';
  print(name4);

  const API = '121212'; // 'Const' should be known at compile time
}
