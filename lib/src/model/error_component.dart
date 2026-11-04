// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/report_component_sub_type.dart';
import 'package:thingsboard_client/src/model/report_component_type.dart';
import 'package:thingsboard_client/src/model/error_component_all_of_exception.dart';
import 'package:thingsboard_client/src/model/report_component.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_component.g.dart';

/// ErrorComponent
///
/// Properties:
/// * [subType] 
/// * [type] 
/// * [errorMessage] 
/// * [exception] 
@BuiltValue()
abstract class ErrorComponent implements ReportComponent, Built<ErrorComponent, ErrorComponentBuilder> {
  @BuiltValueField(wireName: r'exception')
  ErrorComponentAllOfException? get exception;

  @BuiltValueField(wireName: r'errorMessage')
  String? get errorMessage;

  ErrorComponent._();

  factory ErrorComponent([void updates(ErrorComponentBuilder b)]) = _$ErrorComponent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorComponentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorComponent> get serializer => _$ErrorComponentSerializer();
}

class _$ErrorComponentSerializer implements PrimitiveSerializer<ErrorComponent> {
  @override
  final Iterable<Type> types = const [ErrorComponent, _$ErrorComponent];

  @override
  final String wireName = r'ErrorComponent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exception != null) {
      yield r'exception';
      yield serializers.serialize(
        object.exception,
        specifiedType: const FullType(ErrorComponentAllOfException),
      );
    }
    if (object.errorMessage != null) {
      yield r'errorMessage';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType(String),
      );
    }
    yield r'subType';
    yield serializers.serialize(
      object.subType,
      specifiedType: const FullType(ReportComponentSubType),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReportComponentType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorComponentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exception':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ErrorComponentAllOfException),
          ) as ErrorComponentAllOfException?;
          if (valueDes == null) continue;
          result.exception.replace(valueDes);
          break;
        case r'errorMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.errorMessage = valueDes;
          break;
        case r'subType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReportComponentSubType),
          ) as ReportComponentSubType;
          result.subType = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReportComponentType),
          ) as ReportComponentType;
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
  ErrorComponent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorComponentBuilder();
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


