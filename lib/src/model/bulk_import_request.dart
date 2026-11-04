// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/mapping.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_import_request.g.dart';

/// BulkImportRequest
///
/// Properties:
/// * [file]
/// * [mapping]
/// * [customerId]
/// * [entityGroupId]
@BuiltValue()
abstract class BulkImportRequest
    implements Built<BulkImportRequest, BulkImportRequestBuilder> {
  @BuiltValueField(wireName: r'file')
  String? get file;

  @BuiltValueField(wireName: r'mapping')
  Mapping? get mapping;

  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  @BuiltValueField(wireName: r'entityGroupId')
  String? get entityGroupId;

  BulkImportRequest._();

  factory BulkImportRequest([void updates(BulkImportRequestBuilder b)]) =
      _$BulkImportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkImportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkImportRequest> get serializer =>
      _$BulkImportRequestSerializer();
}

class _$BulkImportRequestSerializer
    implements PrimitiveSerializer<BulkImportRequest> {
  @override
  final Iterable<Type> types = const [BulkImportRequest, _$BulkImportRequest];

  @override
  final String wireName = r'BulkImportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkImportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(String),
      );
    }
    if (object.mapping != null) {
      yield r'mapping';
      yield serializers.serialize(
        object.mapping,
        specifiedType: const FullType(Mapping),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.entityGroupId != null) {
      yield r'entityGroupId';
      yield serializers.serialize(
        object.entityGroupId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkImportRequest object, {
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
    required BulkImportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'file':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.file = valueDes;
          break;
        case r'mapping':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Mapping),
                  )
                  as Mapping?;
          if (valueDes == null) continue;
          result.mapping.replace(valueDes);
          break;
        case r'customerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'entityGroupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityGroupId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkImportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkImportRequestBuilder();
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
