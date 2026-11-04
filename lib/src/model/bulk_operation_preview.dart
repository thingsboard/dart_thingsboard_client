// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/skipped_app.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_operation_preview.g.dart';

/// BulkOperationPreview
///
/// Properties:
/// * [total] - Total number of apps targeted by the bulk operation
/// * [eligible] - Number of apps that would be submitted (total minus skipped)
/// * [skippedCountsByReason] - Skip count per reason for the targeted apps
/// * [skippedSample] - Sample of skipped apps, capped per reason. Use the run history to inspect the full list.
@BuiltValue()
abstract class BulkOperationPreview implements Built<BulkOperationPreview, BulkOperationPreviewBuilder> {
  /// Total number of apps targeted by the bulk operation
  @BuiltValueField(wireName: r'total')
  int? get total;

  /// Number of apps that would be submitted (total minus skipped)
  @BuiltValueField(wireName: r'eligible')
  int? get eligible;

  /// Skip count per reason for the targeted apps
  @BuiltValueField(wireName: r'skippedCountsByReason')
  BuiltMap<String, int>? get skippedCountsByReason;

  /// Sample of skipped apps, capped per reason. Use the run history to inspect the full list.
  @BuiltValueField(wireName: r'skippedSample')
  BuiltList<SkippedApp>? get skippedSample;

  BulkOperationPreview._();

  factory BulkOperationPreview([void updates(BulkOperationPreviewBuilder b)]) = _$BulkOperationPreview;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkOperationPreviewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkOperationPreview> get serializer => _$BulkOperationPreviewSerializer();
}

class _$BulkOperationPreviewSerializer implements PrimitiveSerializer<BulkOperationPreview> {
  @override
  final Iterable<Type> types = const [BulkOperationPreview, _$BulkOperationPreview];

  @override
  final String wireName = r'BulkOperationPreview';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkOperationPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.eligible != null) {
      yield r'eligible';
      yield serializers.serialize(
        object.eligible,
        specifiedType: const FullType(int),
      );
    }
    if (object.skippedCountsByReason != null) {
      yield r'skippedCountsByReason';
      yield serializers.serialize(
        object.skippedCountsByReason,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.skippedSample != null) {
      yield r'skippedSample';
      yield serializers.serialize(
        object.skippedSample,
        specifiedType: const FullType(BuiltList, [FullType(SkippedApp)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkOperationPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkOperationPreviewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.total = valueDes;
          break;
        case r'eligible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.eligible = valueDes;
          break;
        case r'skippedCountsByReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.skippedCountsByReason.replace(valueDes);
          break;
        case r'skippedSample':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(SkippedApp)]),
          ) as BuiltList<SkippedApp>?;
          if (valueDes == null) continue;
          result.skippedSample.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkOperationPreview deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkOperationPreviewBuilder();
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


