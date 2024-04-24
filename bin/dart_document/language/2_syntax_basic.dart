// Variables
var name = 'Bob';
Object nameObj = 'Roger';
String nameStr = 'James';

// Null safety
String? nameSafety; // Nullable type. Can be `null` or string.

// Default value
void defaultValue() {
  int? lineCount;
  assert(lineCount == null);
}

void defaultValue2() {
  int lineCount = 0;
  assert(lineCount == null);
}

late String description;

// Final and const
// #
final nameF = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';
const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere
var foo = const [];
final barf = const [];
const baz = []; // Equivalent to `const []`

void main() {
  defaultValue();
  // defaultValue2();
  int lineCount;
  if (true) {
    lineCount = 1;
  } else {
    lineCount = 0;
  }
  print(lineCount);
  description = 'Feijoada!';
  print(description);
  // This is the program's only call to readThermometer().
  late String temperature = readThermometer(); // Lazily initialized.

  foo = [1, 2, 3]; // Was const []
  // baz = [42]; // Error: Constant variables can't be assigned a value.
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.
  print(i);
  print(list);
  print(map);
  print(set);
}

String readThermometer() {
  return "100";
}
