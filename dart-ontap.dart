import 'dart:math';

bool isPrime(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

bool isCompositeNumber(int n) {
  if (n <= 1) return false;
  if (n <= 3) return false;
  if (n % 2 == 0 || n % 3 == 0) return true;

  for (int i = 5; i * i <= n; i = i + 6) {
    if (n % i == 0 || n % (i + 2) == 0) return true;
  }
  return false;
}

extension listExt on List<int> {
  int sumList() {
    int sum = 0;
    for (int i = 0; i < this.length; i++) {
      sum += this[i];
    }
    ;
    return sum;
  }
}

int Ucln(int a, int b) {
  int t;
  while (a > 0) {
    if (a < b) {
      t = a;
      a = b;
      b = t;
    }
    a = a - b;
  }
  return b;
}

int giaiThua(int i) {
  if (i == 0) {
    return 1;
  } else {
    return i * giaiThua(i - 1);
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main(List<String> args) {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 10];

  // Bài 1. Cho một mảng các số nguyên [1,2,3,4,5,6,7,8,10]. In ra màn hình các số chẵn.
  var evenNumbers = numbers.where((element) => element.isEven);
  print('Bai_1 : $evenNumbers');

  // Bài 2. Cho một mảng các số nguyên [1,2,3,4,5,6,7,8,10]. In ra màn hình các số nguyên tố.
  var primeNumbers = numbers.where((element) => isPrime(element));
  print('Bai_2 : $primeNumbers');

  // Bài 3. Cho một mảng các số nguyên [1,2,3,4,5,6,7,8,10]. In ra màn hình các số là hợp số.
  var compositeNumbers = numbers.where((element) => isCompositeNumber(element));
  print('Bai_3 : $compositeNumbers');

  var unSortedList = [1, 4, 6, 8, 3, 2, 10, 9];
  // Bài 4. Cho một mảng các số nguyên [1,4,6,8,3,2,10,9]. In ra màn hình dãy số được sắp xếp tăng dần.
  unSortedList.sort();
  var toUpSortedList = unSortedList;
  print('Bai_4 : $toUpSortedList');

  // Bài 5. Cho một mảng các số nguyên [1,4,6,8,3,2,10,9]. In ra màn hình dãy số được sắp xếp giảm dần.
  var toDownSortedList = unSortedList.reversed;
  print('Bai_5 : $toDownSortedList');

  // Bài 6. Cho một mảng các số nguyên [1,2,3,4,5,6,7,8,10]. In ra màn hình tổng của dãy số.
  var numList = [1, 2, 3, 4, 5, 6, 7, 8, 10];
  var toSumList = numList.sumList();
  print('Bai_6 : $toSumList');

  // Bài 7. Cho một mảng các số nguyên [1,4,6,8,3,4,1,6]. In ra màn hình những số không tồn tại các cặp số giống nhau.
  List<int> firstList = [1, 4, 6, 8, 3, 4, 1, 6];
  List<int> reduceNumberList = firstList.toSet().toList();
  for (var element in reduceNumberList) {
    firstList.remove(element);
  }
  for (var element in firstList) {
    reduceNumberList.remove(element);
  }
  print('Bai_7 : $reduceNumberList');

  // Bài 8. Cho 2 số nguyên 10 và 44. In ra màn hình ức chung lớn nhất của 2 số đó.
  int a = 10;
  int b = 44;
  var uocChungLN = Ucln(a, b);
  print('Bai_8 : $uocChungLN');

  String firstString = 'Hello word welcome Techmaster';
  // Bài 9. Cho một chuỗi “Hello word welcome Techmaster”. In ra màn hình chuỗi sau khi xóa các kí tự space
  List<String> firstSplitteredList = firstString.split('');
  firstSplitteredList.removeWhere((element) => element == ' ');
  String removeSpaceString = firstSplitteredList.join();
  print('Bai_9 : $removeSpaceString');

  // Bài 10. Cho một chuỗi “Hello word welcome Techmaster”. In ra màn hình kí tự có số lần lập lại lớn nhất
  List<String> reduceCharacterList = firstSplitteredList.toSet().toList();
  List<int> arrCount = [];
  for (var element in reduceCharacterList) {
    int c = 0;
    for (int i = 0; i < firstSplitteredList.length; i++) {
      if (firstSplitteredList[i] == element) {
        c++;
      }
    }
    arrCount.add(c);
  }
  for (int i = 0; i < arrCount.length; i++) {
    if (arrCount[i] == arrCount.reduce(max)) {
      print('Bai_10 : ${reduceCharacterList[i]}');
    }
  }

  // Bài 11. Cho một chuỗi “Hello word welcome Techmaster”. In ra màn hình kí tự có số lần lập lại lớn nhất
  for (int i = 0; i < arrCount.length; i++) {
    if (arrCount[i] == arrCount.reduce(min)) {
      print('Bai_11 : ${reduceCharacterList[i]}');
    }
  }

  // Bài 12. Cho một chuỗi “Hello word welcome Techmaster”. In ra màn hình chuỗi sau khi được đảo ngược
  print('Bai_12 : ${firstSplitteredList.reversed.join()}');

  // Bài 13. In ra màn hình kết quả của phép tính 8! (giai thừa)
  print('Bai_13 : ${giaiThua(8)}');

  // Bài 14. Viết chương trình in ra 10 số đầu tiên của dãy Fibonacci
  for (var i = 0; i < 10; i++) {
    print('Bai_14 : ${fibonacci(i)}');
  }

  // Bài 15. Tính tổng phép tính S = 1+3+5+…+13+15
  int S = 0;
  for (var i = 1; i <= 15; i += 2) {
    S += i;
  }
  print('Bai_15 : $S');

  var A_1 = 1;
  var B_1 = 2;
  // Bài 16. Tạo 2 biến A=1 và B=2, hãy hoán đổi giá trị 2 biến và in ra màn hình A=2 và B=1. Được sử dụng biến tạm
  var temp;
  print('Bai_16 : A = $A_1 , B = $B_1');
  temp = A_1;
  A_1 = B_1;
  B_1 = temp;
  print('Bai_16 : A = $A_1 , B = $B_1');

  var A_2 = 1;
  var B_2 = 2;
  // Bài 17. Tạo 2 biến A=1 và B=2, hãy hoán đổi giá trị 2 biến và in ra màn hình A=2 và B=1. Không được sử dụng biến tạm
  print('Bai_17 : A = $A_2 , B = $B_2');
  A_2 = A_2 + B_2;
  B_2 = A_2 - B_2;
  A_2 = A_2 - B_2;
  print('Bai_17 : A = $A_2 , B = $B_2');
}
