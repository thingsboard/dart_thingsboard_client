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

part 'privacy_protocol.g.dart';

class PrivacyProtocol extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DES')
  static const PrivacyProtocol DES = _$DES;
  @BuiltValueEnumConst(wireName: r'AES_128')
  static const PrivacyProtocol AES_128 = _$AES_128;
  @BuiltValueEnumConst(wireName: r'AES_192')
  static const PrivacyProtocol AES_192 = _$AES_192;
  @BuiltValueEnumConst(wireName: r'AES_256')
  static const PrivacyProtocol AES_256 = _$AES_256;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PrivacyProtocol unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PrivacyProtocol> get serializer =>
      _$privacyProtocolSerializer;

  const PrivacyProtocol._(String name) : super(name);

  static BuiltSet<PrivacyProtocol> get values => _$values;
  static PrivacyProtocol valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PrivacyProtocolMixin = Object with _$PrivacyProtocolMixin;
