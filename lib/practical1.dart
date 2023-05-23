import 'dart:io';

void main() {
  var x = [];
  int a = 0, i;
  stdout.write("enter size of the array => ");
  int n = int.parse(stdin.readLineSync()!);

  print("enter array elements  ");
  print("====================  ");
  for (i = 0; i < n; i++) {
    x.add(int.parse(stdin.readLineSync()!));
  }

  print("all negative elements  ");
  print("=====================  ");
  for (i = 0; i < n; i++) {
    if (x[i] < 0) {
      print(x[i]);
    } else {
      a++;
    }
  }
  if (a == 0) {
    print("\n no negative elements in array...");
  }
}
