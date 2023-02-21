import 'dart:html';

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

String sayHello3(
  String name, 
  int age, 
  [String? country = 'cuba'] // optional positional parameter
) => 'Hello $name you are $age and you come from $country';

String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

class Player {
  final String name = 'jeongyeon';
  int xp = 1500;

  void sayHello() {
    print("Hi my name is $name");
  }
}

class Player2 {
  late final String name;
  late int xp;

  Player2(this.name, this.xp);

  void sayHello() {
    print("Hi my name is $name");
  }
}

abstract class Human {
  void walk();
}

enum Team { red, blue }

class Player3 extends Human {
  String name;
  int xp, age;
  Team team;

  Player3({
    required this.name,
    required this.xp,
    required this.team,
    required this.age
  });

  void walk() {
    print("I'm walking");
  }

  Player3.createBluePlayer({
    required String name,
    required int age
  }) : this.age = age,
      this.name = name,
      this.team = Team.blue,
      this.xp = 0;

  Player3.createRedPlayer(
    String name, 
    int age
  ) : this.age = age,
      this.name = name,
      this.team = Team.red,
      this.xp = 0;

  void sayHello() {
    print("Hi my name is $name");
  }
}

class Coach extends Human {
  void walk() {
    print("Coach is walking");
  }
}

class Player4 {
  final String name;
  int xp;
  String team;

  Player4.fromJson(Map<String, dynamic> playerJson)
  : name = playerJson['name'],
    xp = playerJson['xp'],
    team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

class Human2 {
  final String name;
  Human2({required this.name});
  void sayHello() {
    print("hi my name is $name");
  }
}

enum Team2 { blue, red }

class Player5 extends Human2 {
  final Team team;

  Player5({
    required this.team,
    required String name
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
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

  var results = sayHello3('nico', 12);
  print(results);

  capitalizeName('jeongyeon');
  capitalizeName(null);

  String? name6;
  name6 ??= 'jeongyeon';
  name6 = null;
  name6 ??= 'another';
  print(name6);

  print(reverseListOfNumbers([1, 2, 3]));

  print(sayHi({"name": "jeongyeon"}));

  var player2 = Player();
  print(player2.name);  
  player2.sayHello();

  var player3 = Player2("lynn", 1500);
  player3.sayHello();

  var player4 = Player3(
    age: 21,
    name: "jeongyeon",
    xp: 1200,
    team: Team.blue
  );

  var bluePlayer = Player3.createBluePlayer(
    name: "jeongyeon",
    age: 21,
  );

  var redPlayer = Player3.createRedPlayer("jeongyeon", 21);

  var apiData = [
    {
      "name": "nico",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "lynn",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "dal",
      "team": "red",
      "xp": 0,
    }
  ];

  apiData.forEach((playerJson) {
    var player = Player4.fromJson(playerJson);
    player.sayHello();
  });

  var jeongyeon2 = Player3(name: 'jeongyeon', xp: 1200, team: Team.red, age: 25);
  var potato = jeongyeon2
  ..name = 'kim'
  ..xp = 1200000
  ..team = Team.blue
  ..age = 23
  ..sayHello();

  var player6 = Player5(team: Team.red, name: 'jeongyeon');
  player6.sayHello();
}
