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
import 'package:thingsboard_client/src/model/report_component.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_break_component.g.dart';

/// PageBreakComponent
///
/// Properties:
/// * [subType]
/// * [type]
@BuiltValue()
abstract class PageBreakComponent
    implements
        ReportComponent,
        Built<PageBreakComponent, PageBreakComponentBuilder> {
  PageBreakComponent._();

  factory PageBreakComponent([void updates(PageBreakComponentBuilder b)]) =
      _$PageBreakComponent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PageBreakComponentBuilder b) =>
      b..type = ReportComponentType.PAGE_BREAK;

  @BuiltValueSerializer(custom: true)
  static Serializer<PageBreakComponent> get serializer =>
      _$PageBreakComponentSerializer();
}

class _$PageBreakComponentSerializer
    implements PrimitiveSerializer<PageBreakComponent> {
  @override
  final Iterable<Type> types = const [PageBreakComponent, _$PageBreakComponent];

  @override
  final String wireName = r'PageBreakComponent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PageBreakComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReportComponentType),
    );
    if (object.subType != null) {
      yield r'subType';
      yield serializers.serialize(
        object.subType,
        specifiedType: const FullType(ReportComponentSubType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PageBreakComponent object, {
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
    required PageBreakComponentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportComponentType),
                  )
                  as ReportComponentType;
          result.type = valueDes;
          break;
        case r'subType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ReportComponentSubType,
                    ),
                  )
                  as ReportComponentSubType?;
          if (valueDes == null) continue;
          result.subType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PageBreakComponent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PageBreakComponentBuilder();
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
