import 'dart:math';

import '../error/thingsboard_error.dart';

enum DataType {
  STRING,
  LONG,
  BOOLEAN,
  DOUBLE,
  JSON
}

DataType dataTypeFromString(String value) {
  return DataType.values.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}

extension DataTypeToString on DataType {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class KvEntry {

  String getKey();

  DataType getDataType();

  String? getStrValue();

  int? getLongValue();

  bool? getBooleanValue();

  double? getDoubleValue();

  String? getJsonValue();

  String getValueAsString();

  dynamic getValue();

}

abstract class AttributeKvEntry extends KvEntry {

  int getLastUpdateTs();

}

abstract class TsKvEntry extends KvEntry {

  int getTs();

  int getDataPoints();

}

class BaseAttributeKvEntry implements AttributeKvEntry {

  final int lastUpdateTs;
  final KvEntry kv;

  BaseAttributeKvEntry(this.kv, this.lastUpdateTs);

  @override
  int getLastUpdateTs() => lastUpdateTs;

  @override
  String getKey() => kv.getKey();

  @override
  DataType getDataType() => kv.getDataType();

  @override
  String? getStrValue() => kv.getStrValue();

  @override
  int? getLongValue() => kv.getLongValue();

  @override
  bool? getBooleanValue() => kv.getBooleanValue();

  @override
  double? getDoubleValue() => kv.getDoubleValue();

  @override
  String? getJsonValue() => kv.getJsonValue();


  @override
  String getValueAsString() => kv.getValueAsString();

  @override
  dynamic getValue() => kv.getValue();

}

class BasicTsKvEntry implements TsKvEntry {

  static final int MAX_CHARS_PER_DATA_POINT = 512;

  final int ts;
  final KvEntry kv;

  BasicTsKvEntry(this.ts, this.kv);

  @override
  int getTs() => ts;

  @override
  String getKey() => kv.getKey();

  @override
  DataType getDataType() => kv.getDataType();

  @override
  String? getStrValue() => kv.getStrValue();

  @override
  int? getLongValue() => kv.getLongValue();

  @override
  bool? getBooleanValue() => kv.getBooleanValue();

  @override
  double? getDoubleValue() => kv.getDoubleValue();

  @override
  String? getJsonValue() => kv.getJsonValue();


  @override
  String getValueAsString() => kv.getValueAsString();

  @override
  dynamic getValue() => kv.getValue();

  @override
  int getDataPoints() {
    int length;
    switch (getDataType()) {
      case DataType.STRING:
        length = getStrValue()!.length;
        break;
      case DataType.JSON:
        length = getJsonValue()!.length;
        break;
      default:
        return 1;
    }
    return max(1, (length + MAX_CHARS_PER_DATA_POINT - 1) / MAX_CHARS_PER_DATA_POINT).toInt();
  }

  @override
  String toString() {
    return 'BasicTsKvEntry{ts: $ts, kv: $kv}';
  }
}

abstract class BasicKvEntry implements KvEntry {

  final String key;

  BasicKvEntry(this.key);

  @override
  String getKey() => key;

  @override
  String? getStrValue() => null;

  @override
  int? getLongValue() => null;

  @override
  bool? getBooleanValue() => null;

  @override
  double? getDoubleValue() => null;

  @override
  String? getJsonValue() => null;

  @override
  String toString() {
    return 'BasicKvEntry{key: $key}';
  }
}

class BooleanDataEntry extends BasicKvEntry {

  final bool value;

  BooleanDataEntry(String key, this.value): super(key);

  @override
  DataType getDataType() => DataType.BOOLEAN;

  @override
  bool? getBooleanValue() => value;

  @override
  dynamic getValue() => value;

  @override
  String getValueAsString() => value.toString();

  @override
  String toString() {
    return 'BooleanDataEntry{value: $value} ' + super.toString();
  }
}

class StringDataEntry extends BasicKvEntry {

  final String value;

  StringDataEntry(String key, this.value): super(key);

  @override
  DataType getDataType() => DataType.STRING;

  @override
  String? getStrValue() => value;

  @override
  dynamic getValue() => value;

  @override
  String getValueAsString() => value;

  @override
  String toString() {
    return 'StringDataEntry{value: $value} ' + super.toString();
  }
}

class LongDataEntry extends BasicKvEntry {

  final int value;

  LongDataEntry(String key, this.value): super(key);

  @override
  DataType getDataType() => DataType.LONG;

  @override
  int? getLongValue() => value;

  @override
  dynamic getValue() => value;

  @override
  String getValueAsString() => value.toString();

  @override
  String toString() {
    return 'LongDataEntry{value: $value} ' + super.toString();
  }
}

class DoubleDataEntry extends BasicKvEntry {

  final double value;

  DoubleDataEntry(String key, this.value): super(key);

  @override
  DataType getDataType() => DataType.DOUBLE;

  @override
  double? getDoubleValue() => value;

  @override
  dynamic getValue() => value;

  @override
  String getValueAsString() => value.toString();

  @override
  String toString() {
    return 'DoubleDataEntry{value: $value} ' + super.toString();
  }
}

class JsonDataEntry extends BasicKvEntry {

  final String value;

  JsonDataEntry(String key, this.value): super(key);

  @override
  DataType getDataType() => DataType.JSON;

  @override
  String? getJsonValue() => value;

  @override
  dynamic getValue() => value;

  @override
  String getValueAsString() => value;

  @override
  String toString() {
    return 'JsonDataEntry{value: $value} ' + super.toString();
  }
}

enum Aggregation {
  MIN,
  MAX,
  AVG,
  SUM,
  COUNT,
  NONE
}

Aggregation aggregationFromString(String value) {
  return Aggregation.values.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}

extension AggregationToString on Aggregation {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class RestJsonConverter {

  static final String KEY = 'key';
  static final String VALUE = 'value';
  static final String LAST_UPDATE_TS = 'lastUpdateTs';
  static final String TS = 'ts';

  static final String CAN_T_PARSE_VALUE = 'Can\'t parse value: ';

  static List<AttributeKvEntry> toAttributes(List<dynamic>? attributes) {
    if (attributes != null && attributes.isNotEmpty) {
      return attributes.map((attr) {
        var entry = _parseValue(attr[KEY] as String, attr[VALUE]);
        return BaseAttributeKvEntry(entry, attr[LAST_UPDATE_TS] as int);
      }).toList();
    } else {
      return [];
    }
  }

  static List<TsKvEntry> toTimeseries(Map<String, dynamic>? timeseries) {
    if (timeseries != null && timeseries.isNotEmpty) {
      var result = <TsKvEntry>[];
      timeseries.forEach((key, value) {
        var values = value as List<dynamic>;
        result.addAll(values.map((ts) {
          var entry = _parseValue(key, ts[VALUE]);
          return BasicTsKvEntry(ts[TS] as int, entry);
        }));
      });
      return result;
    } else {
      return [];
    }
  }

  static KvEntry _parseValue(String key, dynamic value) {
    if (!(value is Map)) {
      if (value is bool) {
        return BooleanDataEntry(key, value);
      } else if (value is num) {
        return _parseNumericValue(key, value);
      } else if (value is String) {
        return StringDataEntry(key, value);
      } else {
        throw ThingsboardError(message: CAN_T_PARSE_VALUE + value, errorCode: ThingsBoardErrorCode.invalidArguments);
      }
    } else {
      return JsonDataEntry(key, value.toString());
    }
  }

  static KvEntry _parseNumericValue(String key, num value) {
    if (value is int) {
      return LongDataEntry(key, value);
    } else {
      return DoubleDataEntry(key, value.toDouble());
    }
  }

}
