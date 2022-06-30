void main(List<String> args) {}

class lopHoc {
  final String name;
  late int soBuoiHoc;
  lopHoc({required this.name, required this.soBuoiHoc}) {
    assert(soBuoiHoc >= 10, "So buoi hoc khong nho hon 10.");
  }
}

class flutter extends lopHoc {
  flutter({required name, required soBuoiHoc})
      : super(name: name, soBuoiHoc: soBuoiHoc);

  void setSbh(int sbh) {
    if (sbh >= 10) {
      this.soBuoiHoc = sbh;
    } else {
      this.soBuoiHoc = 10;
    }
  }
}

class android extends flutter {
  android({required name, required soBuoiHoc})
      : super(name: name, soBuoiHoc: soBuoiHoc + 5);

  void setSbh(int sbh) {
    if (sbh >= 10) {
      this.soBuoiHoc = sbh;
    } else {
      this.soBuoiHoc = 10;
    }
  }
}

class ios extends android {
  ios({required name, required soBuoiHoc})
      : super(name: name, soBuoiHoc: soBuoiHoc + 3);

  void setSbh(int sbh) {
    if (sbh >= 10) {
      this.soBuoiHoc = sbh;
    } else {
      this.soBuoiHoc = 10;
    }
  }
}

class web extends flutter {
  web({required name, required soBuoiHoc})
      : super(name: name, soBuoiHoc: soBuoiHoc - 2);

  void setSbh(int sbh) {
    if (sbh >= 10) {
      this.soBuoiHoc = sbh;
    } else {
      this.soBuoiHoc = 10;
    }
  }
}
