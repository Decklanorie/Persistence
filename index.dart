int additivePersistence(int n) {
  bool condition = false;
  String integer = n.toString();
  if (integer.length == 1) return 0;
  int i = 0;
  while (!condition) {
    i++;
    integer = integer.split('').map(int.parse).reduce((a, b) => a + b).toString();
    print(integer);
    if (integer.length == 1) {
      condition = true;
    }
  }
  print('done');
  return i;
}

int multiplicativePersistence(int n) {
  bool condition = false;
  String integer = n.toString();
  if (integer.length == 1) return 0;
  int i = 0;
  while (!condition) {
    i++;
    integer = integer.split('').map(int.parse).reduce((a, b) => a * b).toString();
    if (integer.length == 1) {
      condition = true;
    }
  }
  return i;
}

void main() {
  print(additivePersistence(12345));
  print(multiplicativePersistence(12345));
}
