// Khai báo toàn bộ các kiểu dữ liệu: Non-Nullable Types và Nullable Types, dynamic, var.
// Có sử dụng các từ khoá static, final, late, const.

late String late_x;

class MS {
  static const mstest = 25;
}

void main(List<String> args) {
  int nonNullT_1 = 5;
  double nonNullT_2 = 5.0;
  String nonNullT_3 = 'string';
  bool nonNullT_4 = false;
  List nonNullT_5 = [3, 1, 2];
  Map nonNullT_6 = {'value': 'key'};
  int? nullT_1;
  double? nullT_2;
  String? nullT_3 = '';
  bool? nullT_4;
  List? nullT_5 = [];
  Map? nullT_6 = {};
  var x_1 = 1;
  var x_2 = 1.5;
  var x_3 = 'hello';
  var x_4 = false;
  var x_5 = [5, 6, 5, 7, 8, 9];
  var x_6 = {1: true, 2: false};
  dynamic x_d = 6;
  x_d = 12.5;
  x_d = 'abc';
  x_d = true;
  x_d = ['x', 'y', 'z'];
  x_d = {1: 2, 3: 5, 7: 9};
  const k = 5;
  final fi;

//  Viết 1 hàm tính giai thừa của 6: 720

  int f = 1;
  for (int i = 1; i <= 6; i++) f *= i;
  print('Giai thua cua 6 : $f');

  /// ví dụ về 4. hàm chuyển đổi qua lại giữa string, int, double
  String intToStr(int input) => input.toString();
  String doubToStr(double input) => input.toString();
  double intToDoub(int input) => input.toDouble();
  int doubToInt(double input) => input.toInt();
  int strToInt(String input) => int.parse(input);
  double strToDouble(String input) => double.parse(input);
}
