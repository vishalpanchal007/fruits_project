import 'dart:io';

void main() {
  int ch;
  int a = 3;
  int b = 3;
  int sum = 0;
  int res = 0;

  stdout.write("\n 1 . Sum of all elements.");
  stdout.write("\n 2 . Sum of diagonal elements.");
  stdout.write("\n 3 . Sum of antidiagonal elements.");
  stdout.write("\n 0 . Exit  ");
  do {
    stdout.write("\n Enter your choice :- ");
    ch = int.parse(stdin.readLineSync()!);

    switch (ch) {
      case 0:
        break;

      case 1:
        print("\n Enter matrix 3*3  ");
        print(" ================  ");
        var l1 = List.generate(a,
            (i) => List.generate(b, (j) => int.parse(stdin.readLineSync()!)));
        print(l1);
        stdout.write("\n Sum of all elements are :- ");
        var bList = List.generate(
            a, (i) => List.generate(b, (j) => sum = sum + l1[i][j]));
        stdout.write(sum);
        break;

      case 2:
        print("\nenter matrix 3*3 ");
        print(" ===============");
        var l1 = List.generate(a,
            (i) => List.generate(b, (j) => int.parse(stdin.readLineSync()!)));
        print(l1);
        stdout.write("\nSum of diagonal elements are :");
        var l2 = List.generate(
            a,
            (i) =>
                List.generate(b, (j) => (i == j) ? {sum += l1[i][j]}! : {" "}));
        for (int i = 0; i < a; i++) {
          for (int j = 0; j < a; j++) {
            if (i == j) {
              sum += l1[i][j];
            }
          }
        }
        stdout.write(sum);
        break;

      case 3:
        print("\nenter matrix 3*3 ");
        print(" ================  ");
        var ascList = List.generate(a,
            (i) => List.generate(a, (j) => int.parse(stdin.readLineSync()!)));
        print(ascList);
        stdout.write("\nSum of diagonal elements are : ");
        var bList = List.generate(
            a,
            (i) => List.generate(
                b, (j) => (i == j) ? {sum += ascList[i][j]}! : {" "}));
        for (int i = 0; i < a; i++) {
          for (int j = 0; j < a; j++) {
            if (i + j == 2) {
              sum += ascList[i][j];
            }
          }
        }
        stdout.write(sum);
        break;

      default:
        stdout.write("oops!!! invalid choice...");
    }
  } while (ch != 0);
}
