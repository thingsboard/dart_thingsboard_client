import 'sort_order.dart';

class PageLink {
  String? textSearch;
  int pageSize;
  int page;
  SortOrder? sortOrder;

  PageLink(this.pageSize, [this.page = 0, this.textSearch, this.sortOrder]);

  PageLink nextPageLink() {
    return PageLink(pageSize, page + 1, textSearch, sortOrder);
  }

  Map<String, dynamic> toQueryParameters() {
    var queryParameters = <String, dynamic>{'pageSize': pageSize, 'page': page};
    if (textSearch != null && textSearch!.isNotEmpty) {
      queryParameters['textSearch'] = textSearch!;
    }
    if (sortOrder != null) {
      queryParameters['sortProperty'] = sortOrder!.property;
      queryParameters['sortOrder'] = sortOrder!.direction.toShortString();
    }
    return queryParameters;
  }
}

class TimePageLink extends PageLink {
  int? startTime;
  int? endTime;

  TimePageLink(int pageSize,
      [int page = 0,
      String? textSearch,
      SortOrder? sortOrder,
      this.startTime,
      this.endTime])
      : super(pageSize, page, textSearch, sortOrder);

  @override
  TimePageLink nextPageLink() {
    return TimePageLink(
        pageSize, page + 1, textSearch, sortOrder, startTime, endTime);
  }

  @override
  Map<String, dynamic> toQueryParameters() {
    var queryParameters = super.toQueryParameters();
    if (startTime != null) {
      queryParameters['startTime'] = startTime;
    }
    if (endTime != null) {
      queryParameters['endTime'] = endTime;
    }
    return queryParameters;
  }
}
