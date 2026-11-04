// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/report_component.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'header_footer.g.dart';

/// HeaderFooter
///
/// Properties:
/// * [enabled] 
/// * [components] 
/// * [firstPage] 
@BuiltValue()
abstract class HeaderFooter implements Built<HeaderFooter, HeaderFooterBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'components')
  BuiltList<ReportComponent> get components;

  @BuiltValueField(wireName: r'firstPage')
  JsonObject? get firstPage;

  HeaderFooter._();

  factory HeaderFooter([void updates(HeaderFooterBuilder b)]) = _$HeaderFooter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HeaderFooterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HeaderFooter> get serializer => _$HeaderFooterSerializer();
}

class _$HeaderFooterSerializer implements PrimitiveSerializer<HeaderFooter> {
  @override
  final Iterable<Type> types = const [HeaderFooter, _$HeaderFooter];

  @override
  final String wireName = r'HeaderFooter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HeaderFooter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'components';
    yield serializers.serialize(
      object.components,
      specifiedType: const FullType(BuiltList, [FullType(ReportComponent)]),
    );
    if (object.firstPage != null) {
      yield r'firstPage';
      yield serializers.serialize(
        object.firstPage,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HeaderFooter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HeaderFooterBuilder result,
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
        case r'components':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ReportComponent)]),
          ) as BuiltList<ReportComponent>;
          result.components.replace(valueDes);
          break;
        case r'firstPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.firstPage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HeaderFooter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HeaderFooterBuilder();
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


