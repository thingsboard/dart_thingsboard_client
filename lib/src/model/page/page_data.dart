import '../base_data.dart';

class PageData<T> {
  List<T> data;
  int totalPages;
  int totalElements;
  bool hasNext;

  PageData(this.data, this.totalPages, this.totalElements, this.hasNext);

  PageData.fromJson(Map<String, dynamic> json, fromJsonFunction<T> fromJson)
      : data = dataFromJson(json['data'], fromJson),
        totalPages = json['totalPages'],
        totalElements = json['totalElements'],
        hasNext = json['hasNext'];

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((dynamic e) => e.toJson()).toList(),
      'totalPages': totalPages,
      'totalElements': totalElements,
      'hasNext': hasNext
    };
  }

  @override
  String toString() {
    return 'PageData{data: ${dataToString(data)}, totalPages: $totalPages, totalElements: $totalElements, hasNext: $hasNext}';
  }
}

PageData<T> emptyPageData<T>() => PageData<T>([], 0, 0, false);

List<T> dataFromJson<T>(List<dynamic> jsonData, fromJsonFunction<T> fromJson) {
  return jsonData.map((e) => fromJson(e)).toList();
}

String dataToString<T>(List<T> data) {
  var res = data.isNotEmpty ? '\n' : '';
  res += data.map((e) => e.toString()).join('\n');
  res += data.isNotEmpty ? '\n' : '';
  return res;
}
