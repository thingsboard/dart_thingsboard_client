// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/time_series_chart_key_settings.dart';
import 'package:thingsboard_client/src/model/column_settings.dart';
import 'package:thingsboard_client/src/model/default_data_key_settings.dart';
import 'package:thingsboard_client/src/model/data_key_settings_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'data_key_settings.g.dart';

/// DataKeySettings
///
/// Properties:
/// * [type] - Data key settings type
@BuiltValue(instantiable: false)
abstract class DataKeySettings  {
  /// Data key settings type
  @BuiltValueField(wireName: r'type')
  DataKeySettingsType get type;
  // enum typeEnum {  COLUMN,  TIME_SERIES_CHART,  DEFAULT,  };

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'COLUMN': ColumnSettings,
    r'DEFAULT': DefaultDataKeySettings,
    r'TIME_SERIES_CHART': TimeSeriesChartKeySettings,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<DataKeySettings> get serializer => _$DataKeySettingsSerializer();
}

extension DataKeySettingsDiscriminatorExt on DataKeySettings {
    String? get discriminatorValue {
        if (this is ColumnSettings) {
            return r'COLUMN';
        }
        if (this is DefaultDataKeySettings) {
            return r'DEFAULT';
        }
        if (this is TimeSeriesChartKeySettings) {
            return r'TIME_SERIES_CHART';
        }
        return null;
    }
}
extension DataKeySettingsBuilderDiscriminatorExt on DataKeySettingsBuilder {
    String? get discriminatorValue {
        if (this is ColumnSettingsBuilder) {
            return r'COLUMN';
        }
        if (this is DefaultDataKeySettingsBuilder) {
            return r'DEFAULT';
        }
        if (this is TimeSeriesChartKeySettingsBuilder) {
            return r'TIME_SERIES_CHART';
        }
        return null;
    }
}

class _$DataKeySettingsSerializer implements PrimitiveSerializer<DataKeySettings> {
  @override
  final Iterable<Type> types = const [DataKeySettings];

  @override
  final String wireName = r'DataKeySettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DataKeySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(DataKeySettingsType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DataKeySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is ColumnSettings) {
      return serializers.serialize(object, specifiedType: FullType(ColumnSettings))!;
    }
    if (object is DefaultDataKeySettings) {
      return serializers.serialize(object, specifiedType: FullType(DefaultDataKeySettings))!;
    }
    if (object is TimeSeriesChartKeySettings) {
      return serializers.serialize(object, specifiedType: FullType(TimeSeriesChartKeySettings))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  DataKeySettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(DataKeySettings.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'COLUMN':
        return serializers.deserialize(serialized, specifiedType: FullType(ColumnSettings)) as ColumnSettings;
      case r'DEFAULT':
        return serializers.deserialize(serialized, specifiedType: FullType(DefaultDataKeySettings)) as DefaultDataKeySettings;
      case r'TIME_SERIES_CHART':
        return serializers.deserialize(serialized, specifiedType: FullType(TimeSeriesChartKeySettings)) as TimeSeriesChartKeySettings;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($DataKeySettings)) as $DataKeySettings;
    }
  }
}


/// a concrete implementation of [DataKeySettings], since [DataKeySettings] is not instantiable
@BuiltValue(instantiable: true)
abstract class $DataKeySettings implements DataKeySettings, Built<$DataKeySettings, $DataKeySettingsBuilder> {
  $DataKeySettings._();

  factory $DataKeySettings([void Function($DataKeySettingsBuilder)? updates]) = _$$DataKeySettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($DataKeySettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$DataKeySettings> get serializer => _$$DataKeySettingsSerializer();
}

class _$$DataKeySettingsSerializer implements PrimitiveSerializer<$DataKeySettings> {
  @override
  final Iterable<Type> types = const [$DataKeySettings, _$$DataKeySettings];

  @override
  final String wireName = r'$DataKeySettings';

  @override
  Object serialize(
    Serializers serializers,
    $DataKeySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(DataKeySettings))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DataKeySettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DataKeySettingsType),
          ) as DataKeySettingsType;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $DataKeySettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $DataKeySettingsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

