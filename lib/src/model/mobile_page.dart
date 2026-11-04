// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dashboard_page.dart';
import 'package:thingsboard_client/src/model/custom_mobile_page.dart';
import 'package:thingsboard_client/src/model/default_mobile_page.dart';
import 'package:thingsboard_client/src/model/web_view_page.dart';
import 'package:thingsboard_client/src/model/mobile_page_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mobile_page.g.dart';

/// Configuration for a mobile page
///
/// Properties:
/// * [type]
/// * [visible]
@BuiltValue(instantiable: false)
abstract class MobilePage {
  @BuiltValueField(wireName: r'type')
  MobilePageType get type;
  // enum typeEnum {  DEFAULT,  DASHBOARD,  WEB_VIEW,  CUSTOM,  };

  @BuiltValueField(wireName: r'visible')
  bool? get visible;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'CUSTOM': CustomMobilePage,
    r'DASHBOARD': DashboardPage,
    r'DEFAULT': DefaultMobilePage,
    r'WEB_VIEW': WebViewPage,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<MobilePage> get serializer => _$MobilePageSerializer();
}

extension MobilePageDiscriminatorExt on MobilePage {
  String? get discriminatorValue {
    if (this is CustomMobilePage) {
      return r'CUSTOM';
    }
    if (this is DashboardPage) {
      return r'DASHBOARD';
    }
    if (this is DefaultMobilePage) {
      return r'DEFAULT';
    }
    if (this is WebViewPage) {
      return r'WEB_VIEW';
    }
    return null;
  }
}

extension MobilePageBuilderDiscriminatorExt on MobilePageBuilder {
  String? get discriminatorValue {
    if (this is CustomMobilePageBuilder) {
      return r'CUSTOM';
    }
    if (this is DashboardPageBuilder) {
      return r'DASHBOARD';
    }
    if (this is DefaultMobilePageBuilder) {
      return r'DEFAULT';
    }
    if (this is WebViewPageBuilder) {
      return r'WEB_VIEW';
    }
    return null;
  }
}

class _$MobilePageSerializer implements PrimitiveSerializer<MobilePage> {
  @override
  final Iterable<Type> types = const [MobilePage];

  @override
  final String wireName = r'MobilePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobilePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(MobilePageType),
    );
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MobilePage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CustomMobilePage) {
      return serializers.serialize(
        object,
        specifiedType: FullType(CustomMobilePage),
      )!;
    }
    if (object is DashboardPage) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DashboardPage),
      )!;
    }
    if (object is DefaultMobilePage) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DefaultMobilePage),
      )!;
    }
    if (object is WebViewPage) {
      return serializers.serialize(
        object,
        specifiedType: FullType(WebViewPage),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  MobilePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(MobilePage.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'CUSTOM':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(CustomMobilePage),
            )
            as CustomMobilePage;
      case r'DASHBOARD':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DashboardPage),
            )
            as DashboardPage;
      case r'DEFAULT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DefaultMobilePage),
            )
            as DefaultMobilePage;
      case r'WEB_VIEW':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(WebViewPage),
            )
            as WebViewPage;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($MobilePage),
            )
            as $MobilePage;
    }
  }
}

/// a concrete implementation of [MobilePage], since [MobilePage] is not instantiable
@BuiltValue(instantiable: true)
abstract class $MobilePage
    implements MobilePage, Built<$MobilePage, $MobilePageBuilder> {
  $MobilePage._();

  factory $MobilePage([void Function($MobilePageBuilder)? updates]) =
      _$$MobilePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MobilePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$MobilePage> get serializer => _$$MobilePageSerializer();
}

class _$$MobilePageSerializer implements PrimitiveSerializer<$MobilePage> {
  @override
  final Iterable<Type> types = const [$MobilePage, _$$MobilePage];

  @override
  final String wireName = r'$MobilePage';

  @override
  Object serialize(
    Serializers serializers,
    $MobilePage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(MobilePage))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MobilePageBuilder result,
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
                    specifiedType: const FullType(MobilePageType),
                  )
                  as MobilePageType;
          result.type = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $MobilePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MobilePageBuilder();
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
