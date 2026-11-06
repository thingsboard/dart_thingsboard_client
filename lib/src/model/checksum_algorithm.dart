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

part 'checksum_algorithm.g.dart';

class ChecksumAlgorithm extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MD5')
  static const ChecksumAlgorithm MD5 = _$MD5;
  @BuiltValueEnumConst(wireName: r'SHA256')
  static const ChecksumAlgorithm SHA256 = _$SHA256;
  @BuiltValueEnumConst(wireName: r'SHA384')
  static const ChecksumAlgorithm SHA384 = _$SHA384;
  @BuiltValueEnumConst(wireName: r'SHA512')
  static const ChecksumAlgorithm SHA512 = _$SHA512;
  @BuiltValueEnumConst(wireName: r'CRC32')
  static const ChecksumAlgorithm CRC32 = _$CRC32;
  @BuiltValueEnumConst(wireName: r'MURMUR3_32')
  static const ChecksumAlgorithm MURMUR3_32 = _$MURMUR3_32;
  @BuiltValueEnumConst(wireName: r'MURMUR3_128')
  static const ChecksumAlgorithm MURMUR3_128 = _$MURMUR3_128;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChecksumAlgorithm unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<ChecksumAlgorithm> get serializer =>
      _$checksumAlgorithmSerializer;

  const ChecksumAlgorithm._(String name) : super(name);

  static BuiltSet<ChecksumAlgorithm> get values => _$values;
  static ChecksumAlgorithm valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ChecksumAlgorithmMixin = Object with _$ChecksumAlgorithmMixin;
