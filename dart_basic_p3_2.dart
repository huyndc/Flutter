void main(List<String> args) {
  // Tạo 1 mảng số tự nhiên từ 0 -> 100
  List<int> arr = [];
  for (int i = 0; i <= 100; i++) arr.add(i);
  print('$arr');

  // Liệt kê ra toàn bộ các số lẻ
  List<int> arrOdd = [...arr.where((element) => element % 2 == 1)];
  print('$arrOdd');

  //  Liệt kê ra toàn bộ số chẵn
  List<int> arrEven = [...arr.where((element) => element % 2 == 0)];
  print('$arrEven');

  //  Kiểm tra xem 0 là số chẵn hay số lẻ

  void check(int input) {
    if (input % 2 == 0) {
      return print('$input la so chan');
    } else {
      return print('$input la so le');
    }
  }

  check(0);
}
