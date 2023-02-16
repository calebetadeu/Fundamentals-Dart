
import 'package:characters/characters.dart';
class BuildAndTypes {
  void booleans() {
    // Check for an empty string.
    var fullName = '';
    assert(fullName.isEmpty);

// Check for zero.
    var hitPoints = 0;
    assert(hitPoints <= 0);

// Check for null.
    var unicorn;
    assert(unicorn == null);

// Check for NaN.
    var iMeantToDoThis = 0 / 0;
    assert(iMeantToDoThis.isNaN);
  }

  void strings() {
    var s1 = 'Singles quotes work well for string literals';
    print(s1);
    var s2 = "Double quotes work just as well";
    print(s2);
    var s3 = 'It\'s even easier to use the other delimiter';
    print(s3);
    var s4 = "It's even easier to use the other delimiter";
    print(s4);

    var s = 'string interpolation';

    assert('Dart has $s, which is very handy.' ==
        'Dart has string interpolation, '
            'which is very handy.');
    assert('That deserves all caps. '
            '${s.toUpperCase()} is very handy!' ==
        'That deserves all caps. '
            'STRING INTERPOLATION is very handy!');

    var si1 = 'String '
        'concatenation'
        " works even over line breaks.";
    assert(si1 ==
        'String concatenation works even over '
            'line breaks.');

    var si2 = 'The + operator ' + 'works, as well.';
    assert(si2 == 'The + operator works, as well.');

    var sd = r'In a raw string, not even \n gets special treatment.';

    print(sd);

    // These work in a const string.
    const aConstNum = 0;
    const aConstBool = true;
    const aConstString = 'a constant string';

// These do NOT work in a const string.
    var aNum = 0;
    var aBool = true;
    var aString = 'a string';
    const aConstList = [1, 2, 3];

    const validConstString = '$aConstNum $aConstBool $aConstString';
// const invalidConstString = '$aNum $aBool $aString $aConstList';
  }

  void numbers() {
    var i = 1;
    var hex = 0XDEADBEEf;
    print(hex);
    print(i);

    var y = 1.1;
    var exponents = 1.42e5;
    print(y);
    print(exponents);
    num x = 1; // x can have both int and double values
    x += 2.5;
    print(x);

    num notes = 1.0;
    notes += 2;
    print(notes);
    double number1 = 1;
    print(number1); // Equivalent to double number = 1.0

//Convert
// String -> int
    var one = int.parse('1');
    assert(one == 1);

// String -> double
    var onePointOne = double.parse('1.1');
    assert(onePointOne == 1.1);

// int -> String
    String oneAsString = 1.toString();
    assert(oneAsString == '1');

// double -> String
    String piAsString = 3.14159.toStringAsFixed(2);
    assert(piAsString == '3.14');

//int type specifies the traditional bitwise shift
    var isTrue = 4 >> 2;
    print(isTrue);

    var isTrue2 = 3 | 4;
    print(isTrue2);

    var isTrue3 = 3 & 4;
    print(isTrue3);

    var isTrue4 = 3 ^ 4;
    print(isTrue4);
  }

void list() {
  var list = [1, 2, 3, 4, 5, 6, 7]; // list without type
  print(list);
  var list2 = [
    'Car',
    'Boat',
    'Plane',
  ];
  print(list2);

  var list3 = [1, 2, 3];
  assert(list3.length == 3);
  assert(list3[1] == 2);

  list3[1] = 1;
  assert(list3[1] ==
      1); //Lists use zero-based indexing, where 0 is the index of the first value and list.length - 1 is the index of the last value. You can get a list’s length using the .length property and access a list’s values using the subscript operator ([]):

  //To create a list that’s a compile-time constant, add const before the list literal:
  var constantList = const [1, 2, 3, 4, 5, 6, 7];
  // constantList[1] = 1; // This line will cause an error. because is const is immutable
  print(constantList);

  // List  + spread ...
  var listOp = [1, 2, 3];
  var listOp2 = [0, ...listOp];
  assert(listOp2.length == 4);
  print(listOp2);
  // List Null Safety´
  var listN;
  var listNull = [0, ...?listN];
  assert(listNull.length == 1);
  print(listNull);
}

void collections(){
//Dart also offers collection if and collection for, which you can use to build collections using conditionals (if) and repetition (for).
  var promoActive = true;
  var nav = ["Home", "Furniture", 'Plants', if (promoActive) 'Outlet'];
  print(nav);
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}


void sets(){
  var videogames = {'Ps5','Xbox,Ps4,Nintendo'};
  print(videogames);

  var elementos = <String>{};
  elementos.add("Geladeira"); 
  print(elementos);

  elementos.addAll(videogames);
  print(elementos);

  //With Constants
  final constantSet = const{
    "Geladeira",
    "Fogão",
    "Xbox",
    "Nintendo"
  };
  // constantSet.add('helium'); // This line will cause an error.

}

void maps(){
  var produtos = {
    "Geladeira" : "https://upload.wikimedia.org/wikipedia/",
    "Fogão" : "https://upload.wikimedia.org/wikipedia/",
    "Xbox" : "https://upload.wikimedia.org/wikipedia/",
    "Nintendo" : "https://upload.wikimedia.org/wikipedia/"
  };
  print(produtos);

  var prudutosComId = {
    1: 'Geladeira',
    2: 'Fogão',
    3: 'Xbox',
  };
  print(prudutosComId);
  
    
}

void runnes(){
  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
  print('The last character: ${hi.characters.last}');
}
}