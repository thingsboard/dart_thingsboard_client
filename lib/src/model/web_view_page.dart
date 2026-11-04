// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/mobile_page.dart';
import 'package:thingsboard_client/src/model/mobile_page_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'web_view_page.g.dart';

/// WebViewPage
///
/// Properties:
/// * [type]
/// * [visible]
/// * [label] - Page label
/// * [icon] - URL of the page icon
/// * [url] - Url
@BuiltValue()
abstract class WebViewPage
    implements MobilePage, Built<WebViewPage, WebViewPageBuilder> {
  /// URL of the page icon
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Page label
  @BuiltValueField(wireName: r'label')
  String? get label;

  /// Url
  @BuiltValueField(wireName: r'url')
  String? get url;

  WebViewPage._();

  factory WebViewPage([void updates(WebViewPageBuilder b)]) = _$WebViewPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebViewPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebViewPage> get serializer => _$WebViewPageSerializer();
}

class _$WebViewPageSerializer implements PrimitiveSerializer<WebViewPage> {
  @override
  final Iterable<Type> types = const [WebViewPage, _$WebViewPage];

  @override
  final String wireName = r'WebViewPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebViewPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(MobilePageType),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebViewPage object, {
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
    required WebViewPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'icon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'visible':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.visible = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MobilePageType),
                  )
                  as MobilePageType;
          result.type = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebViewPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebViewPageBuilder();
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
