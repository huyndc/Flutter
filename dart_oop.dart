void main(List<String> args) {
  flutter lopFlutter = flutter();
  print('${lopFlutter.remainMembers()}');
  android lopAndroid = android();
  print('${lopAndroid.remainMembers()}');
  ios lopIos = ios();
  print('${lopIos.remainMembers()}');
  web lopWeb = web();
  print('${lopWeb.remainMembers()}');
}

class lopHoc {
  final String tenLop = 'ten';
  final int soHocVien = 0;
  final List<String> dsHocVien = [];

  void buildAndroid() {}
  void buildIos() {}
  void buildWeb() {}
  void buildDesktopApp() {}

  int remainMembers() {
    return soHocVien - dsHocVien.length;
  }
}

class flutter extends lopHoc {
  @override
  final String tenLop = 'flutter';
  final int soHocVien = 11;
  final List<String> dsHocVien = ['A', 'B'];

  @override
  void buildAndroid() {}
  void buildIos() {}
  void buildWeb() {}
  void buildDesktopApp() {}
}

class android extends lopHoc {
  @override
  final String tenLop = 'android';
  final int soHocVien = 12;
  final List<String> dsHocVien = ['B', 'C', 'D'];

  @override
  void buildAndroid() {}
}

class ios extends lopHoc {
  @override
  final String tenLop = 'ios';
  final int soHocVien = 13;
  final List<String> dsHocVien = ['D', 'E', 'F'];

  @override
  void buildIos() {}
}

class web extends lopHoc {
  @override
  final String tenLop = 'web';
  final int soHocVien = 14;
  final List<String> dsHocVien = ['F'];

  @override
  void buildWeb() {}
}
