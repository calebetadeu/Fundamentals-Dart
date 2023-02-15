import 'dart:ffi';

class Variables {

  void variablesSetup() {
    var name =
        "Calebe"; // Mutable variable without declared type, we can change this value
    name = "Sara";
    print(name);

    Object name2 =
        "Josue"; // Mutable Object without declared type, we can change this value
    name2 = "Lucy";
    print(name2);

    String name3 =
        "Markus"; // Mutable Object with Declared Type, we can change this value
    name3 = "Jeff";
    print(name3);

    int?
        lineCount; // This variable is a nullable type, we can change this value. NullSafety is applied to this variable.
    assert(lineCount == null);

    late String
        description; // This variable is a lazy type, this must be a change.
    // If you fail to initialize a late variable, a runtime error occurs when the variable is used
    description = "Hello";
    print(description);

    final name4 =
        "John"; // Immutable variable without declared type, we can change this value
    //name4 = "Sara";  Error: a final variable can only be set once.
    print(name4);

    const bar =
        1000; // Immutabel variable that is used for be compile-time constants

    var foo = const [];
    foo = [14, 5, 4];
    print(foo);

    final bar2 = const [4, 5, 5, 7]; // A final variable
    print(bar2);
    const baz = []; // Equivalent to `const []`

    const Object i = 3;
    const list = [i as int];
    const map = {if (i is int) i: 'int'};
    const set = {if (list is List<Int>) ...list};
    print(i);
    print(list);
    print(map);
    print(set);
  }
}
