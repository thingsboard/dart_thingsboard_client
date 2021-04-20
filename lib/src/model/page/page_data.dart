import 'dart:mirrors';

const fromJsonConstructor = Symbol('fromJson');

class PageData<T> {
  List<T> data;
  int totalPages;
  int totalElements;
  bool hasNext;

  PageData(this.data, this.totalPages, this.totalElements, this.hasNext);

  PageData.fromJson(Map<String, dynamic> json, Type type):
        data = dataFromJson(json['data'], type),
        totalPages = json['totalPages'],
        totalElements = json['totalElements'],
        hasNext = json['hasNext'];

  @override
  String toString() {
    return 'PageData{data: $data, totalPages: $totalPages, totalElements: $totalElements, hasNext: $hasNext}';
  }
}

PageData<T> emptyPageData<T>() => PageData<T>([], 0, 0, false);

List<T> dataFromJson<T>(List<dynamic> jsonData, Type type) {
  var typeMirror = (reflectType(type) as ClassMirror);
  var dataList = <T>[];
  jsonData.forEach((element) {
    var data = typeMirror.newInstance(fromJsonConstructor, [element]).reflectee;
    dataList.add(data);
  });
  return dataList;
}
