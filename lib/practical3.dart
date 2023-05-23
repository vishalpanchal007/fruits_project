import 'dart:io';

void main() {
  var c = [];
  int a, b, choice;

  stdout.write(" How many elements :- ");
  int n = int.parse(stdin.readLineSync()!);
  print("\n  Enter array elements    ");
  print("   ========================");
  for (int i = 0; i < n; i++) {
    c.add(int.parse(stdin.readLineSync()!));
  }
  print("\n       Menu        ");
  print("        =======        ");
  print("  1 . Insert.");
  print("  2 . Delete.");
  print("  3 . Update.");
  print("  4 . View.");

  do {
    stdout.write(" Enter your choice :- ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter index number for Insert :- ");
        a = int.parse(stdin.readLineSync()!);
        stdout.write("Enter element for Insert :- ");
        b = int.parse(stdin.readLineSync()!);
        c.insert(a, b);
        print("\n $c");
        break;

      case 2:
        stdout.write("\n Enter position for Delete element :- ");
        a = int.parse(stdin.readLineSync()!);
        c.remove(a);
        print("\n$c");
        break;

      case 3:
        stdout.write("\n Enter index  for Update element :- ");
        a = int.parse(stdin.readLineSync()!);
        stdout.write("\n  Enter element for Update element :- ");
        b = int.parse(stdin.readLineSync()!);
        c.forEach((val) {
          val = a;
          c[a] = b;
        });
        print("\n$c");
        break;

      case 4:
        stdout.write("\n view elements  ");
        a = int.parse(stdin.readLineSync()!);
        print("\n${[c[a]]}");
        break;

      default:
        print("\n Invalid Choice....\n");
        break;
    }
  } while (choice >= 1 && choice <= 4);
}
