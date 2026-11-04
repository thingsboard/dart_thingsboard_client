// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/link_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'button.g.dart';

/// Button
///
/// Properties:
/// * [enabled] 
/// * [text] 
/// * [linkType] 
/// * [link] 
/// * [dashboardId] 
/// * [dashboardState] 
/// * [setEntityIdInState] 
@BuiltValue()
abstract class Button implements Built<Button, ButtonBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'linkType')
  LinkType? get linkType;
  // enum linkTypeEnum {  LINK,  DASHBOARD,  };

  @BuiltValueField(wireName: r'link')
  String? get link;

  @BuiltValueField(wireName: r'dashboardId')
  String? get dashboardId;

  @BuiltValueField(wireName: r'dashboardState')
  String? get dashboardState;

  @BuiltValueField(wireName: r'setEntityIdInState')
  bool? get setEntityIdInState;

  Button._();

  factory Button([void updates(ButtonBuilder b)]) = _$Button;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ButtonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Button> get serializer => _$ButtonSerializer();
}

class _$ButtonSerializer implements PrimitiveSerializer<Button> {
  @override
  final Iterable<Type> types = const [Button, _$Button];

  @override
  final String wireName = r'Button';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Button object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.linkType != null) {
      yield r'linkType';
      yield serializers.serialize(
        object.linkType,
        specifiedType: const FullType(LinkType),
      );
    }
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(String),
      );
    }
    if (object.dashboardId != null) {
      yield r'dashboardId';
      yield serializers.serialize(
        object.dashboardId,
        specifiedType: const FullType(String),
      );
    }
    if (object.dashboardState != null) {
      yield r'dashboardState';
      yield serializers.serialize(
        object.dashboardState,
        specifiedType: const FullType(String),
      );
    }
    if (object.setEntityIdInState != null) {
      yield r'setEntityIdInState';
      yield serializers.serialize(
        object.setEntityIdInState,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Button object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ButtonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'linkType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LinkType),
          ) as LinkType?;
          if (valueDes == null) continue;
          result.linkType = valueDes;
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.link = valueDes;
          break;
        case r'dashboardId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dashboardId = valueDes;
          break;
        case r'dashboardState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dashboardState = valueDes;
          break;
        case r'setEntityIdInState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.setEntityIdInState = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Button deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ButtonBuilder();
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


