String sayHello(String potato) {
  // call api
  // perform calculating
  return "Hello $potato nice to meet you!";
}

num plus(num a, num b) => a + b;

String sayHello2({
  required String name, // required => not null, String name = 'anon' => null possible
  required int age,
  required String country
}) {
  return "Hello $name, you are $age, and you come from $country";
}

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

  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "💖 $friend",
  ];
  print(newFriends);

  var player = {
    'name': 'nico',
    "xp": 19.99,
    'superpower': false,
  };

  // Map<int, bool> player2 = {
  //   1: true,
  //   2: false,
  //   3: true,
  // };

  // Map<List<int>, bool> player3 = {
  //   [1, 2, 3, 5]: true,
  // };

  var numbers2 = {1, 2, 3, 4};  // Set<int> numbers2 = {1, 2, 3, 4};
  numbers2.add(1);
  print(numbers2);

  print(sayHello('nico'));

  print(sayHello2(
    age: 12,
    country: 'cuba',
    name: 'nico',
  ));
}
