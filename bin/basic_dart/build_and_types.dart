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
}
