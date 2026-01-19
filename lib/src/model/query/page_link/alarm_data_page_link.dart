import 'package:thingsboard_client/src/model/alarm_models.dart';
import 'package:thingsboard_client/src/model/id/user_id.dart';
import 'package:thingsboard_client/src/model/query/page_link/entity_data_page_link.dart';
import 'package:thingsboard_client/src/model/query/page_link/entity_data_sort_order.dart';

class AlarmDataPageLink extends EntityDataPageLink {
  int? startTs;
  int? endTs;
  int? timeWindow;
  List<String>? typeList;
  List<AlarmSearchStatus>? statusList;
  List<AlarmSeverity>? severityList;
  bool? searchPropagatedAlarms;
  UserId? assigneeId;
  AlarmDataPageLink(
      {required int pageSize,
      int page = 0,
      String? textSearch,
      EntityDataSortOrder? sortOrder,
      bool isDynamic = false,
      this.startTs,
      this.endTs,
      this.timeWindow,
      this.typeList,
      this.statusList,
      this.severityList,
      this.searchPropagatedAlarms,
      this.assigneeId,
      })
      : super(
            pageSize: pageSize,
            page: page,
            textSearch: textSearch,
            sortOrder: sortOrder,
            isDynamic: isDynamic);

  @override
  AlarmDataPageLink nextPageLink() {
    return AlarmDataPageLink(
        pageSize: pageSize,
        page: page + 1,
        textSearch: textSearch,
        sortOrder: sortOrder,
        isDynamic: isDynamic,
        startTs: startTs,
        endTs: endTs,
        timeWindow: timeWindow,
        typeList: typeList,
        statusList: statusList,
        severityList: severityList,
        searchPropagatedAlarms: searchPropagatedAlarms);
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (startTs != null) {
      json['startTs'] = startTs;
    }
    if (endTs != null) {
      json['endTs'] = endTs;
    }
    if (timeWindow != null) {
      json['timeWindow'] = timeWindow;
    }
    if (typeList != null) {
      json['typeList'] = typeList;
    }
    if (statusList != null) {
      json['statusList'] = statusList!.map((e) => e.toShortString()).toList();
    }
    if (severityList != null) {
      json['severityList'] =
          severityList!.map((e) => e.toShortString()).toList();
    }
    if (searchPropagatedAlarms != null) {
      json['searchPropagatedAlarms'] = searchPropagatedAlarms;
    }
    return json;
  }

  @override
  String toString() {
    return 'AlarmDataPageLink{${entityDataPageLinkString('startTs: $startTs, endTs: $endTs, timeWindow: $timeWindow, typeList: $typeList, statusList: $statusList, severityList: $severityList, searchPropagatedAlarms: $searchPropagatedAlarms')}}';
  }
}
