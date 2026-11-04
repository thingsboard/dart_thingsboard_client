// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/palette_settings.dart';
import 'package:thingsboard_client/src/model/favicon.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'white_labeling_params.g.dart';

/// A JSON value representing the white labeling configuration
///
/// Properties:
/// * [logoImageUrl] - Logo image URL
/// * [logoImageHeight] - The height of a logo container. Logo image will be automatically scaled.
/// * [collapsedLogoImageUrl] - Logo shown when side menu is collapsed
/// * [appTitle] - White-labeled name of the platform
/// * [favicon] - JSON object that contains website icon url and type
/// * [paletteSettings] - Complex JSON that describes structure of the Angular Material Palette. See [theming](https://material.angular.io/guide/theming) for more details
/// * [primaryColorPanels] - Whether primary-color panels (top toolbar, side navigation, dialog and entity-details headers) use the primary palette color as background. When false, they render on a white background
/// * [helpLinkBaseUrl] - Base URL for help link
/// * [uiHelpBaseUrl] - Base URL for the repository with the UI help components (markdown)
/// * [enableHelpLinks] - Enable or Disable help links
/// * [whiteLabelingEnabled] - Enable white-labeling
/// * [showNameVersion] - Show platform name and version on UI and login screen
/// * [platformName] - White-labeled platform name
/// * [platformVersion] - White-labeled platform version
/// * [customCss] - Custom CSS content
/// * [hideConnectivityDialog] - Hide device connectivity dialog
/// * [overrideTrendzName] - Override Trendz Add-on name
@BuiltValue()
abstract class WhiteLabelingParams
    implements Built<WhiteLabelingParams, WhiteLabelingParamsBuilder> {
  /// Logo image URL
  @BuiltValueField(wireName: r'logoImageUrl')
  String? get logoImageUrl;

  /// The height of a logo container. Logo image will be automatically scaled.
  @BuiltValueField(wireName: r'logoImageHeight')
  int? get logoImageHeight;

  /// Logo shown when side menu is collapsed
  @BuiltValueField(wireName: r'collapsedLogoImageUrl')
  String? get collapsedLogoImageUrl;

  /// White-labeled name of the platform
  @BuiltValueField(wireName: r'appTitle')
  String? get appTitle;

  /// JSON object that contains website icon url and type
  @BuiltValueField(wireName: r'favicon')
  Favicon? get favicon;

  /// Complex JSON that describes structure of the Angular Material Palette. See [theming](https://material.angular.io/guide/theming) for more details
  @BuiltValueField(wireName: r'paletteSettings')
  PaletteSettings? get paletteSettings;

  /// Whether primary-color panels (top toolbar, side navigation, dialog and entity-details headers) use the primary palette color as background. When false, they render on a white background
  @BuiltValueField(wireName: r'primaryColorPanels')
  bool? get primaryColorPanels;

  /// Base URL for help link
  @BuiltValueField(wireName: r'helpLinkBaseUrl')
  String? get helpLinkBaseUrl;

  /// Base URL for the repository with the UI help components (markdown)
  @BuiltValueField(wireName: r'uiHelpBaseUrl')
  String? get uiHelpBaseUrl;

  /// Enable or Disable help links
  @BuiltValueField(wireName: r'enableHelpLinks')
  bool? get enableHelpLinks;

  /// Enable white-labeling
  @BuiltValueField(wireName: r'whiteLabelingEnabled')
  bool? get whiteLabelingEnabled;

  /// Show platform name and version on UI and login screen
  @BuiltValueField(wireName: r'showNameVersion')
  bool? get showNameVersion;

  /// White-labeled platform name
  @BuiltValueField(wireName: r'platformName')
  String? get platformName;

  /// White-labeled platform version
  @BuiltValueField(wireName: r'platformVersion')
  String? get platformVersion;

  /// Custom CSS content
  @BuiltValueField(wireName: r'customCss')
  String? get customCss;

  /// Hide device connectivity dialog
  @BuiltValueField(wireName: r'hideConnectivityDialog')
  bool? get hideConnectivityDialog;

  /// Override Trendz Add-on name
  @BuiltValueField(wireName: r'overrideTrendzName')
  bool? get overrideTrendzName;

  WhiteLabelingParams._();

  factory WhiteLabelingParams([void updates(WhiteLabelingParamsBuilder b)]) =
      _$WhiteLabelingParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WhiteLabelingParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WhiteLabelingParams> get serializer =>
      _$WhiteLabelingParamsSerializer();
}

class _$WhiteLabelingParamsSerializer
    implements PrimitiveSerializer<WhiteLabelingParams> {
  @override
  final Iterable<Type> types = const [
    WhiteLabelingParams,
    _$WhiteLabelingParams,
  ];

  @override
  final String wireName = r'WhiteLabelingParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WhiteLabelingParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.logoImageUrl != null) {
      yield r'logoImageUrl';
      yield serializers.serialize(
        object.logoImageUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.logoImageHeight != null) {
      yield r'logoImageHeight';
      yield serializers.serialize(
        object.logoImageHeight,
        specifiedType: const FullType(int),
      );
    }
    if (object.collapsedLogoImageUrl != null) {
      yield r'collapsedLogoImageUrl';
      yield serializers.serialize(
        object.collapsedLogoImageUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.appTitle != null) {
      yield r'appTitle';
      yield serializers.serialize(
        object.appTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.favicon != null) {
      yield r'favicon';
      yield serializers.serialize(
        object.favicon,
        specifiedType: const FullType(Favicon),
      );
    }
    if (object.paletteSettings != null) {
      yield r'paletteSettings';
      yield serializers.serialize(
        object.paletteSettings,
        specifiedType: const FullType(PaletteSettings),
      );
    }
    if (object.primaryColorPanels != null) {
      yield r'primaryColorPanels';
      yield serializers.serialize(
        object.primaryColorPanels,
        specifiedType: const FullType(bool),
      );
    }
    if (object.helpLinkBaseUrl != null) {
      yield r'helpLinkBaseUrl';
      yield serializers.serialize(
        object.helpLinkBaseUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.uiHelpBaseUrl != null) {
      yield r'uiHelpBaseUrl';
      yield serializers.serialize(
        object.uiHelpBaseUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.enableHelpLinks != null) {
      yield r'enableHelpLinks';
      yield serializers.serialize(
        object.enableHelpLinks,
        specifiedType: const FullType(bool),
      );
    }
    if (object.whiteLabelingEnabled != null) {
      yield r'whiteLabelingEnabled';
      yield serializers.serialize(
        object.whiteLabelingEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showNameVersion != null) {
      yield r'showNameVersion';
      yield serializers.serialize(
        object.showNameVersion,
        specifiedType: const FullType(bool),
      );
    }
    if (object.platformName != null) {
      yield r'platformName';
      yield serializers.serialize(
        object.platformName,
        specifiedType: const FullType(String),
      );
    }
    if (object.platformVersion != null) {
      yield r'platformVersion';
      yield serializers.serialize(
        object.platformVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.customCss != null) {
      yield r'customCss';
      yield serializers.serialize(
        object.customCss,
        specifiedType: const FullType(String),
      );
    }
    if (object.hideConnectivityDialog != null) {
      yield r'hideConnectivityDialog';
      yield serializers.serialize(
        object.hideConnectivityDialog,
        specifiedType: const FullType(bool),
      );
    }
    if (object.overrideTrendzName != null) {
      yield r'overrideTrendzName';
      yield serializers.serialize(
        object.overrideTrendzName,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WhiteLabelingParams object, {
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
    required WhiteLabelingParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'logoImageUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.logoImageUrl = valueDes;
          break;
        case r'logoImageHeight':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.logoImageHeight = valueDes;
          break;
        case r'collapsedLogoImageUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.collapsedLogoImageUrl = valueDes;
          break;
        case r'appTitle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.appTitle = valueDes;
          break;
        case r'favicon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Favicon),
                  )
                  as Favicon?;
          if (valueDes == null) continue;
          result.favicon.replace(valueDes);
          break;
        case r'paletteSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PaletteSettings),
                  )
                  as PaletteSettings?;
          if (valueDes == null) continue;
          result.paletteSettings.replace(valueDes);
          break;
        case r'primaryColorPanels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.primaryColorPanels = valueDes;
          break;
        case r'helpLinkBaseUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.helpLinkBaseUrl = valueDes;
          break;
        case r'uiHelpBaseUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.uiHelpBaseUrl = valueDes;
          break;
        case r'enableHelpLinks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enableHelpLinks = valueDes;
          break;
        case r'whiteLabelingEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.whiteLabelingEnabled = valueDes;
          break;
        case r'showNameVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.showNameVersion = valueDes;
          break;
        case r'platformName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.platformName = valueDes;
          break;
        case r'platformVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.platformVersion = valueDes;
          break;
        case r'customCss':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.customCss = valueDes;
          break;
        case r'hideConnectivityDialog':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.hideConnectivityDialog = valueDes;
          break;
        case r'overrideTrendzName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.overrideTrendzName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WhiteLabelingParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WhiteLabelingParamsBuilder();
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
