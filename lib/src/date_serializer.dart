// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:thingsboard_client/src/model/date.dart';

class DateSerializer implements PrimitiveSerializer<Date> {
  const DateSerializer();

  @override
  Iterable<Type> get types => BuiltList.of([Date]);

  @override
  String get wireName => 'Date';

  @override
  Date deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final parsed = DateTime.parse(serialized as String);
    return Date(parsed.year, parsed.month, parsed.day);
  }

  @override
  Object serialize(
    Serializers serializers,
    Date date, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return date.toString();
  }
}
