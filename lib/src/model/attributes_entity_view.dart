// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attributes_entity_view.g.dart';

/// AttributesEntityView
///
/// Properties:
/// * [cs] - List of client-side attribute keys to expose
/// * [ss] - List of server-side attribute keys to expose
/// * [sh] - List of shared attribute keys to expose
@BuiltValue()
abstract class AttributesEntityView
    implements Built<AttributesEntityView, AttributesEntityViewBuilder> {
  /// List of client-side attribute keys to expose
  @BuiltValueField(wireName: r'cs')
  BuiltList<String> get cs;

  /// List of server-side attribute keys to expose
  @BuiltValueField(wireName: r'ss')
  BuiltList<String> get ss;

  /// List of shared attribute keys to expose
  @BuiltValueField(wireName: r'sh')
  BuiltList<String> get sh;

  AttributesEntityView._();

  factory AttributesEntityView([void updates(AttributesEntityViewBuilder b)]) =
      _$AttributesEntityView;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributesEntityViewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributesEntityView> get serializer =>
      _$AttributesEntityViewSerializer();
}

class _$AttributesEntityViewSerializer
    implements PrimitiveSerializer<AttributesEntityView> {
  @override
  final Iterable<Type> types = const [
    AttributesEntityView,
    _$AttributesEntityView,
  ];

  @override
  final String wireName = r'AttributesEntityView';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttributesEntityView object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cs';
    yield serializers.serialize(
      object.cs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'ss';
    yield serializers.serialize(
      object.ss,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'sh';
    yield serializers.serialize(
      object.sh,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttributesEntityView object, {
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
    required AttributesEntityViewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.cs.replace(valueDes);
          break;
        case r'ss':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.ss.replace(valueDes);
          break;
        case r'sh':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.sh.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttributesEntityView deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributesEntityViewBuilder();
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
