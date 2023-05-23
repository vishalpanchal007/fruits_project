import 'dart:io';

void main() {
  var x = [];
  int i;
  stdout.write("enter size of the array => ");
  int n = int.parse(stdin.readLineSync()!);

  print("enter array elements  ");
  print("====================  ");
  for (i = 0; i < n; i++) {
    x.add(int.parse(stdin.readLineSync()!));
  }

  print("largest number in array  ");
  print("=====================  ");
  for (i = 0; i < n; ++i) {
    if (x[0] < x[i]) {
      x[0] = x[i];
    }
  }
  print(x[0]);
  print("\n");
}
