void main(List<String> args) {
  void checkSNT(int input) {
    List<int> soNguyenTo = [];

    for (int i = 1; i <= input; i++) {
      List<int> uocSoK = [];
      for (int k = 1; k <= i; k++) {
        if (i % k == 0) uocSoK.add(k);
      }
      if (uocSoK.length <= 2) soNguyenTo.add(i);
    }
    return print(soNguyenTo);
  }

  checkSNT(100);
}
