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

part 'mobile_app_status.g.dart';

class MobileAppStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'DRAFT')
  static const MobileAppStatus DRAFT = _$DRAFT;
  @BuiltValueEnumConst(wireName: r'PUBLISHED')
  static const MobileAppStatus PUBLISHED = _$PUBLISHED;
  @BuiltValueEnumConst(wireName: r'DEPRECATED')
  static const MobileAppStatus DEPRECATED = _$DEPRECATED;
  @BuiltValueEnumConst(wireName: r'SUSPENDED')
  static const MobileAppStatus SUSPENDED = _$SUSPENDED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MobileAppStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MobileAppStatus> get serializer => _$mobileAppStatusSerializer;

  const MobileAppStatus._(String name): super(name);

  static BuiltSet<MobileAppStatus> get values => _$values;
  static MobileAppStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MobileAppStatusMixin = Object with _$MobileAppStatusMixin;

