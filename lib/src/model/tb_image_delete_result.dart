// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/white_labeling.dart';
import 'package:thingsboard_client/src/model/has_id_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tb_image_delete_result.g.dart';

/// TbImageDeleteResult
///
/// Properties:
/// * [success]
/// * [whiteLabelingList]
/// * [references]
@BuiltValue()
abstract class TbImageDeleteResult
    implements Built<TbImageDeleteResult, TbImageDeleteResultBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'whiteLabelingList')
  BuiltList<WhiteLabeling>? get whiteLabelingList;

  @BuiltValueField(wireName: r'references')
  BuiltMap<String, BuiltList<HasIdObject>>? get references;

  TbImageDeleteResult._();

  factory TbImageDeleteResult([void updates(TbImageDeleteResultBuilder b)]) =
      _$TbImageDeleteResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TbImageDeleteResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TbImageDeleteResult> get serializer =>
      _$TbImageDeleteResultSerializer();
}

class _$TbImageDeleteResultSerializer
    implements PrimitiveSerializer<TbImageDeleteResult> {
  @override
  final Iterable<Type> types = const [
    TbImageDeleteResult,
    _$TbImageDeleteResult,
  ];

  @override
  final String wireName = r'TbImageDeleteResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TbImageDeleteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.whiteLabelingList != null) {
      yield r'whiteLabelingList';
      yield serializers.serialize(
        object.whiteLabelingList,
        specifiedType: const FullType(BuiltList, [FullType(WhiteLabeling)]),
      );
    }
    if (object.references != null) {
      yield r'references';
      yield serializers.serialize(
        object.references,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltList, [FullType(HasIdObject)]),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TbImageDeleteResult object, {
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
    required TbImageDeleteResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.success = valueDes;
          break;
        case r'whiteLabelingList':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(WhiteLabeling),
                    ]),
                  )
                  as BuiltList<WhiteLabeling>?;
          if (valueDes == null) continue;
          result.whiteLabelingList.replace(valueDes);
          break;
        case r'references':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(BuiltList, [FullType(HasIdObject)]),
                    ]),
                  )
                  as BuiltMap<String, BuiltList<HasIdObject>>?;
          if (valueDes == null) continue;
          result.references.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TbImageDeleteResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TbImageDeleteResultBuilder();
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
