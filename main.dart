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

  String name5 = "jeongyeon"; // String name5 = 'jeongyeon';
  bool alive = true;
  int age = 12;
  double money = 69.99;
  // All things in the dart programming language comes from an object. (Object Oriented Language)
  
  num x = 12;
  x = 1.1;

  var giveMeFive = true;
  // List<int> numbers = [1, 2, 3, 4];
  var numbers = [
    1, 
    2, 
    3, 
    4, 
    if (giveMeFive) 5,
  ];
  print(numbers);

  var greeting = "Hello everyone, my name is $name and I'm ${age + 2}";
  print(greeting);
}
