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
import 'package:thingsboard_client/src/model/insets.dart';
import 'package:thingsboard_client/src/model/vertical_alignment.dart';
import 'package:thingsboard_client/src/model/report_component.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'split_view_component.g.dart';

/// SplitViewComponent
///
/// Properties:
/// * [subType]
/// * [type]
/// * [margins]
/// * [paddings]
/// * [background]
/// * [borderWidth]
/// * [borderRadius]
/// * [borderColor]
/// * [leftView]
/// * [rightView]
/// * [splitPosition]
/// * [splitGap]
/// * [leftVerticalAlignment]
/// * [rightVerticalAlignment]
@BuiltValue()
abstract class SplitViewComponent
    implements
        ReportComponent,
        Built<SplitViewComponent, SplitViewComponentBuilder> {
  @BuiltValueField(wireName: r'leftVerticalAlignment')
  VerticalAlignment? get leftVerticalAlignment;
  // enum leftVerticalAlignmentEnum {  bottom,  top,  middle,  };

  @BuiltValueField(wireName: r'margins')
  Insets? get margins;

  @BuiltValueField(wireName: r'leftView')
  ReportComponent? get leftView;

  @BuiltValueField(wireName: r'rightVerticalAlignment')
  VerticalAlignment? get rightVerticalAlignment;
  // enum rightVerticalAlignmentEnum {  bottom,  top,  middle,  };

  @BuiltValueField(wireName: r'borderColor')
  String? get borderColor;

  @BuiltValueField(wireName: r'borderRadius')
  int? get borderRadius;

  @BuiltValueField(wireName: r'paddings')
  Insets? get paddings;

  @BuiltValueField(wireName: r'splitGap')
  int? get splitGap;

  @BuiltValueField(wireName: r'background')
  String? get background;

  @BuiltValueField(wireName: r'borderWidth')
  int? get borderWidth;

  @BuiltValueField(wireName: r'rightView')
  ReportComponent? get rightView;

  @BuiltValueField(wireName: r'splitPosition')
  double? get splitPosition;

  SplitViewComponent._();

  factory SplitViewComponent([void updates(SplitViewComponentBuilder b)]) =
      _$SplitViewComponent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SplitViewComponentBuilder b) =>
      b..type = ReportComponentType.SPLIT_VIEW;

  @BuiltValueSerializer(custom: true)
  static Serializer<SplitViewComponent> get serializer =>
      _$SplitViewComponentSerializer();
}

class _$SplitViewComponentSerializer
    implements PrimitiveSerializer<SplitViewComponent> {
  @override
  final Iterable<Type> types = const [SplitViewComponent, _$SplitViewComponent];

  @override
  final String wireName = r'SplitViewComponent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SplitViewComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.margins != null) {
      yield r'margins';
      yield serializers.serialize(
        object.margins,
        specifiedType: const FullType(Insets),
      );
    }
    if (object.leftView != null) {
      yield r'leftView';
      yield serializers.serialize(
        object.leftView,
        specifiedType: const FullType(ReportComponent),
      );
    }
    if (object.rightVerticalAlignment != null) {
      yield r'rightVerticalAlignment';
      yield serializers.serialize(
        object.rightVerticalAlignment,
        specifiedType: const FullType(VerticalAlignment),
      );
    }
    if (object.borderColor != null) {
      yield r'borderColor';
      yield serializers.serialize(
        object.borderColor,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReportComponentType),
    );
    if (object.leftVerticalAlignment != null) {
      yield r'leftVerticalAlignment';
      yield serializers.serialize(
        object.leftVerticalAlignment,
        specifiedType: const FullType(VerticalAlignment),
      );
    }
    if (object.borderRadius != null) {
      yield r'borderRadius';
      yield serializers.serialize(
        object.borderRadius,
        specifiedType: const FullType(int),
      );
    }
    if (object.paddings != null) {
      yield r'paddings';
      yield serializers.serialize(
        object.paddings,
        specifiedType: const FullType(Insets),
      );
    }
    if (object.splitGap != null) {
      yield r'splitGap';
      yield serializers.serialize(
        object.splitGap,
        specifiedType: const FullType(int),
      );
    }
    if (object.background != null) {
      yield r'background';
      yield serializers.serialize(
        object.background,
        specifiedType: const FullType(String),
      );
    }
    if (object.borderWidth != null) {
      yield r'borderWidth';
      yield serializers.serialize(
        object.borderWidth,
        specifiedType: const FullType(int),
      );
    }
    if (object.subType != null) {
      yield r'subType';
      yield serializers.serialize(
        object.subType,
        specifiedType: const FullType(ReportComponentSubType),
      );
    }
    if (object.rightView != null) {
      yield r'rightView';
      yield serializers.serialize(
        object.rightView,
        specifiedType: const FullType(ReportComponent),
      );
    }
    if (object.splitPosition != null) {
      yield r'splitPosition';
      yield serializers.serialize(
        object.splitPosition,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SplitViewComponent object, {
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
    required SplitViewComponentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'margins':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Insets),
                  )
                  as Insets?;
          if (valueDes == null) continue;
          result.margins.replace(valueDes);
          break;
        case r'leftView':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReportComponent),
                  )
                  as ReportComponent?;
          if (valueDes == null) continue;
          result.leftView = valueDes;
          break;
        case r'rightVerticalAlignment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(VerticalAlignment),
                  )
                  as VerticalAlignment?;
          if (valueDes == null) continue;
          result.rightVerticalAlignment = valueDes;
          break;
        case r'borderColor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.borderColor = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportComponentType),
                  )
                  as ReportComponentType;
          result.type = valueDes;
          break;
        case r'leftVerticalAlignment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(VerticalAlignment),
                  )
                  as VerticalAlignment?;
          if (valueDes == null) continue;
          result.leftVerticalAlignment = valueDes;
          break;
        case r'borderRadius':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.borderRadius = valueDes;
          break;
        case r'paddings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Insets),
                  )
                  as Insets?;
          if (valueDes == null) continue;
          result.paddings.replace(valueDes);
          break;
        case r'splitGap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.splitGap = valueDes;
          break;
        case r'background':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.background = valueDes;
          break;
        case r'borderWidth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.borderWidth = valueDes;
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
        case r'rightView':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReportComponent),
                  )
                  as ReportComponent?;
          if (valueDes == null) continue;
          result.rightView = valueDes;
          break;
        case r'splitPosition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.splitPosition = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SplitViewComponent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SplitViewComponentBuilder();
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
