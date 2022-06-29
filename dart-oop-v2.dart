import 'dart:math';

void main(List<String> args) {
  flutter lopFlutter = flutter();
  // print('${lopFlutter.remainMembers()}');
  android lopAndroid = android();
  // print('${lopAndroid.remainMembers()}');
  ios lopIos = ios();
  // print('${lopIos.remainMembers()}');
  web lopWeb = web();
  // print('${lopWeb.remainMembers()}');

  const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random _rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  while (lopFlutter.remainMembers() > 0) {
    for (int i = 1; i <= lopFlutter.remainMembers(); i++) {
      String remainStudent = getRandomString(1);
      if (lopFlutter.dsHocVien.any((element) => element == remainStudent)) {
        continue;
      } else {
        lopFlutter.dsHocVien.add(remainStudent);
      }
    }
  }

  print(lopFlutter.dsHocVien);
  // print('${lopFlutter.remainMembers()}');

  while (lopAndroid.remainMembers() > 0) {
    for (int i = 1; i <= lopAndroid.remainMembers(); i++) {
      String remainStudent = getRandomString(1);
      if (lopAndroid.dsHocVien.any((element) => element == remainStudent)) {
        continue;
      } else {
        lopAndroid.dsHocVien.add(remainStudent);
      }
    }
  }
  print(lopAndroid.dsHocVien);
  // print('${lopAndroid.remainMembers()}');

  while (lopIos.remainMembers() > 0) {
    for (int i = 1; i <= lopIos.remainMembers(); i++) {
      String remainStudent = getRandomString(1);
      if (lopIos.dsHocVien.any((element) => element == remainStudent)) {
        continue;
      } else {
        lopIos.dsHocVien.add(remainStudent);
      }
    }
  }
  print(lopIos.dsHocVien);
  // print('${lopIos.remainMembers()}');

  while (lopWeb.remainMembers() > 0) {
    for (int i = 1; i <= lopWeb.remainMembers(); i++) {
      String remainStudent = getRandomString(1);
      if (lopWeb.dsHocVien.any((element) => element == remainStudent)) {
        continue;
      } else {
        lopWeb.dsHocVien.add(remainStudent);
      }
    }
  }
  print(lopWeb.dsHocVien);
  // print('${lopWeb.remainMembers()}');
}

class lopHoc {
  final String tenLop = 'ten';
  final int soHocVien = 0;
  final List<String> dsHocVien = [];

  int remainMembers() {
    return soHocVien - dsHocVien.length;
  }
}

abstract class Android {
  void buildAndroid();
}

abstract class Ios {
  void buildIos();
}

abstract class Web {
  void buildWeb();
}

abstract class DesktopApp {
  void buildDesktopApp();
}

class flutter extends lopHoc implements Android, Ios, Web, DesktopApp {
  @override
  final String tenLop = 'flutter';
  final int soHocVien = 11;
  final List<String> dsHocVien = ['A', 'B'];

  @override
  void buildAndroid() {}
  @override
  void buildIos() {}
  @override
  void buildWeb() {}
  @override
  void buildDesktopApp() {}
}

class android extends lopHoc implements Android {
  @override
  final String tenLop = 'android';
  final int soHocVien = 12;
  final List<String> dsHocVien = ['B', 'C', 'D'];

  @override
  void buildAndroid() {}
}

class ios extends lopHoc implements Ios {
  @override
  final String tenLop = 'ios';
  final int soHocVien = 13;
  final List<String> dsHocVien = ['D', 'E', 'F'];

  @override
  void buildIos() {}
}

class web extends lopHoc implements Web {
  @override
  final String tenLop = 'web';
  final int soHocVien = 14;
  final List<String> dsHocVien = ['F'];

  @override
  void buildWeb() {}
}
