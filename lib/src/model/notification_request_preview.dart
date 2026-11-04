// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/delivery_method_notification_template.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_request_preview.g.dart';

/// NotificationRequestPreview
///
/// Properties:
/// * [processedTemplates] 
/// * [totalRecipientsCount] 
/// * [recipientsCountByTarget] 
/// * [recipientsPreview] 
@BuiltValue()
abstract class NotificationRequestPreview implements Built<NotificationRequestPreview, NotificationRequestPreviewBuilder> {
  @BuiltValueField(wireName: r'processedTemplates')
  BuiltMap<String, DeliveryMethodNotificationTemplate>? get processedTemplates;

  @BuiltValueField(wireName: r'totalRecipientsCount')
  int? get totalRecipientsCount;

  @BuiltValueField(wireName: r'recipientsCountByTarget')
  BuiltMap<String, int>? get recipientsCountByTarget;

  @BuiltValueField(wireName: r'recipientsPreview')
  BuiltList<String>? get recipientsPreview;

  NotificationRequestPreview._();

  factory NotificationRequestPreview([void updates(NotificationRequestPreviewBuilder b)]) = _$NotificationRequestPreview;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationRequestPreviewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationRequestPreview> get serializer => _$NotificationRequestPreviewSerializer();
}

class _$NotificationRequestPreviewSerializer implements PrimitiveSerializer<NotificationRequestPreview> {
  @override
  final Iterable<Type> types = const [NotificationRequestPreview, _$NotificationRequestPreview];

  @override
  final String wireName = r'NotificationRequestPreview';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationRequestPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.processedTemplates != null) {
      yield r'processedTemplates';
      yield serializers.serialize(
        object.processedTemplates,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(DeliveryMethodNotificationTemplate)]),
      );
    }
    if (object.totalRecipientsCount != null) {
      yield r'totalRecipientsCount';
      yield serializers.serialize(
        object.totalRecipientsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.recipientsCountByTarget != null) {
      yield r'recipientsCountByTarget';
      yield serializers.serialize(
        object.recipientsCountByTarget,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.recipientsPreview != null) {
      yield r'recipientsPreview';
      yield serializers.serialize(
        object.recipientsPreview,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationRequestPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationRequestPreviewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'processedTemplates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(DeliveryMethodNotificationTemplate)]),
          ) as BuiltMap<String, DeliveryMethodNotificationTemplate>?;
          if (valueDes == null) continue;
          result.processedTemplates.replace(valueDes);
          break;
        case r'totalRecipientsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalRecipientsCount = valueDes;
          break;
        case r'recipientsCountByTarget':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.recipientsCountByTarget.replace(valueDes);
          break;
        case r'recipientsPreview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.recipientsPreview.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationRequestPreview deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationRequestPreviewBuilder();
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


