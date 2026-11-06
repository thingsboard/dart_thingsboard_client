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

part 'authentication_protocol.g.dart';

class AuthenticationProtocol extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SHA_1')
  static const AuthenticationProtocol SHA_1 = _$SHA_1;
  @BuiltValueEnumConst(wireName: r'SHA_224')
  static const AuthenticationProtocol SHA_224 = _$SHA_224;
  @BuiltValueEnumConst(wireName: r'SHA_256')
  static const AuthenticationProtocol SHA_256 = _$SHA_256;
  @BuiltValueEnumConst(wireName: r'SHA_384')
  static const AuthenticationProtocol SHA_384 = _$SHA_384;
  @BuiltValueEnumConst(wireName: r'SHA_512')
  static const AuthenticationProtocol SHA_512 = _$SHA_512;
  @BuiltValueEnumConst(wireName: r'MD5')
  static const AuthenticationProtocol MD5 = _$MD5;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AuthenticationProtocol unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<AuthenticationProtocol> get serializer =>
      _$authenticationProtocolSerializer;

  const AuthenticationProtocol._(String name) : super(name);

  static BuiltSet<AuthenticationProtocol> get values => _$values;
  static AuthenticationProtocol valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AuthenticationProtocolMixin = Object
    with _$AuthenticationProtocolMixin;
