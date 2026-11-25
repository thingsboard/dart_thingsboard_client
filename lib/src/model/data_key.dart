// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/time_window_configuration.dart';
import 'package:thingsboard_client/src/model/data_key_settings.dart';
import 'package:thingsboard_client/src/model/aggregation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'data_key.g.dart';

/// DataKey
///
/// Properties:
/// * [name]
/// * [type]
/// * [label]
/// * [color]
/// * [decimals]
/// * [units]
/// * [aggregationType]
/// * [timewindow]
/// * [usePostProcessing]
/// * [postFuncBody]
/// * [settings]
@BuiltValue()
abstract class DataKey implements Built<DataKey, DataKeyBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'decimals')
  int? get decimals;

  @BuiltValueField(wireName: r'units')
  String? get units;

  @BuiltValueField(wireName: r'aggregationType')
  Aggregation? get aggregationType;
  // enum aggregationTypeEnum {  MIN,  MAX,  AVG,  SUM,  COUNT,  NONE,  };

  @BuiltValueField(wireName: r'timewindow')
  TimeWindowConfiguration? get timewindow;

  @BuiltValueField(wireName: r'usePostProcessing')
  bool? get usePostProcessing;

  @BuiltValueField(wireName: r'postFuncBody')
  String? get postFuncBody;

  @BuiltValueField(wireName: r'settings')
  DataKeySettings? get settings;

  DataKey._();

  factory DataKey([void updates(DataKeyBuilder b)]) = _$DataKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DataKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DataKey> get serializer => _$DataKeySerializer();
}

class _$DataKeySerializer implements PrimitiveSerializer<DataKey> {
  @override
  final Iterable<Type> types = const [DataKey, _$DataKey];

  @override
  final String wireName = r'DataKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DataKey object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
    if (object.decimals != null) {
      yield r'decimals';
      yield serializers.serialize(
        object.decimals,
        specifiedType: const FullType(int),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(String),
      );
    }
    if (object.aggregationType != null) {
      yield r'aggregationType';
      yield serializers.serialize(
        object.aggregationType,
        specifiedType: const FullType(Aggregation),
      );
    }
    if (object.timewindow != null) {
      yield r'timewindow';
      yield serializers.serialize(
        object.timewindow,
        specifiedType: const FullType(TimeWindowConfiguration),
      );
    }
    if (object.usePostProcessing != null) {
      yield r'usePostProcessing';
      yield serializers.serialize(
        object.usePostProcessing,
        specifiedType: const FullType(bool),
      );
    }
    if (object.postFuncBody != null) {
      yield r'postFuncBody';
      yield serializers.serialize(
        object.postFuncBody,
        specifiedType: const FullType(String),
      );
    }
    if (object.settings != null) {
      yield r'settings';
      yield serializers.serialize(
        object.settings,
        specifiedType: const FullType(DataKeySettings),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DataKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DataKeyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'color':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        case r'decimals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.decimals = valueDes;
          break;
        case r'units':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        case r'aggregationType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Aggregation),
                  )
                  as Aggregation?;
          if (valueDes == null) continue;
          result.aggregationType = valueDes;
          break;
        case r'timewindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TimeWindowConfiguration,
                    ),
                  )
                  as TimeWindowConfiguration?;
          if (valueDes == null) continue;
          result.timewindow.replace(valueDes);
          break;
        case r'usePostProcessing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.usePostProcessing = valueDes;
          break;
        case r'postFuncBody':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.postFuncBody = valueDes;
          break;
        case r'settings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DataKeySettings),
                  )
                  as DataKeySettings?;
          if (valueDes == null) continue;
          result.settings = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DataKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DataKeyBuilder();
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
