import 'has_additional_info.dart';

import 'base_data.dart';
import 'id/has_uuid.dart';

abstract class AdditionalInfoBased<T extends HasUuid> extends BaseData<T>
    with HasAdditionalInfo {
  Map<String, dynamic>? additionalInfo;

  AdditionalInfoBased();

  AdditionalInfoBased.fromJson(Map<String, dynamic> json,
      [fromIdFunction<T>? fromId])
      : additionalInfo = json['additionalInfo'],
        super.fromJson(json, fromId);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (additionalInfo != null) {
      json['additionalInfo'] = additionalInfo;
    }
    return json;
  }

  @override
  Map<String, dynamic>? getAdditionalInfo() {
    return additionalInfo;
  }

  @override
  String toString() {
    return 'AdditionalInfoBased{${additionalInfoBasedString()}}';
  }

  String additionalInfoBasedString([String? toStringBody]) {
    return '${baseDataString('${toStringBody != null ? toStringBody + ',' : ''} additionalInfo: $additionalInfo')}';
  }
}
