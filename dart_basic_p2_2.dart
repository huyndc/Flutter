void main(List<String> arguments) {
  var arrs = ["-1", "1", "2", null, "3", "4", "5", "6", "7"];
  Map<dynamic, List<String?>?>? sMap = {
    1: null,
    2: [],
    3: ["x", "y", "z"]
  };
  Map<dynamic, List<dynamic>?>? map = {
    "first": ["a", "b", "c", "d"]
  };
  map.addAll(sMap);

  // List<int> arrsToInt = arrs.map((e) => int.parse(e)).toList();
  List<int> arrsToInt =
      arrs.whereType<String>().map((e) => int.parse(e)).toList();

  map["second"] = arrsToInt;

  // map["third"] = sMap.values.last.sublist(1);
  map["third"] = ((sMap.values.last) ?? []).sublist(1);

  map["fourth"] = [
    // ...arrs.map((e) => int.parse(e)).where((e) => e % 2 == 1),
    ...arrs
        .whereType<String>()
        .map((e) => int.parse(e))
        .where((e) => e % 2 == 1),
    ...arrs.where((e) => e == null),
    // ...sMap[3].sublist(0,2)
    ...(sMap[3] ?? []).sublist(0, 2)
  ];

  print(map);
}
