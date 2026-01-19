import 'package:thingsboard_client/src/model/query/page_link/entity_data_sort_order.dart';

class EntityDataPageLink {
  int pageSize;
  int page;
  String? textSearch;
  EntityDataSortOrder? sortOrder;
  bool isDynamic;

  EntityDataPageLink(
      {required this.pageSize,
      this.page = 0,
      this.textSearch,
      this.sortOrder,
      this.isDynamic = false});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['pageSize'] = pageSize;
    json['page'] = page;
    if (textSearch != null) {
      json['textSearch'] = textSearch;
    }
    if (sortOrder != null) {
      json['sortOrder'] = sortOrder!.toJson();
    }
    json['dynamic'] = isDynamic;
    return json;
  }

  EntityDataPageLink nextPageLink() {
    return EntityDataPageLink(
        pageSize: pageSize,
        page: page + 1,
        textSearch: textSearch,
        sortOrder: sortOrder,
        isDynamic: isDynamic);
  }

  @override
  String toString() {
    return 'EntityDataPageLink{${entityDataPageLinkString()}}';
  }

  String entityDataPageLinkString([String? toStringBody]) {
    return 'pageSize: $pageSize, page: $page, textSearch: $textSearch, sortOrder: $sortOrder, isDynamic: $isDynamic${toStringBody != null ? ', $toStringBody' : ''}';
  }
}
