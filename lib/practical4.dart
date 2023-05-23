import 'dart:io';

void main() {
  int x = 3;
  int y = 3;

  stdout.write("\nenter size of the array => ");
  int n = int.parse(stdin.readLineSync()!);

  print(" \nEnter elements of the array  ");
  print(" ============================= ");
  var a = List.generate(
      x, (i) => List.generate(y, (j) => int.parse(stdin.readLineSync()!)));
  print(a);

  print(" \nEnter elements of the array  ");
  print(" =============================  ");
  var b = List.generate(
      x, (i) => List.generate(y, (j) => int.parse(stdin.readLineSync()!)));
  print(b);

  print("\n=> Addition of the matrix : ");
  print(" ===========================  ");
  var c = List.generate(x, (i) => List.generate(y, (j) => a[i][j] + b[i][j]));
  print(c);
}
