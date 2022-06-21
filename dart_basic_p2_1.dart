void main(List<String> arguments) {
  int a = 10;
  a.add(2);
  a.subtract(2);
  a.multiple(2);
  a.divide(2);
}

extension numExt on num {
  void add(num input) => input <= 0
      ? print('Số truyền vào phải >= 0')
      : print("add method: ${this + input}");

  void subtract(num input) => input <= 0
      ? print('Số truyền vào phải >= 0')
      : print("subtract method: ${this - input}");

  void multiple(num input) => input <= 0
      ? print('Số truyền vào phải >= 0')
      : print("multiple method: ${this * input}");

  void divide(num input) => input <= 0
      ? print('Số truyền vào phải >= 0')
      : print("divide method: ${this / input}");
}
