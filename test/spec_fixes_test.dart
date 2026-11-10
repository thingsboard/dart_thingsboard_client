// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Schemas fixed on the server in thingsboard/thingsboard#16510 and #16561 and
// applied to the committed spec; a spec from a server without them fails here.
import 'package:built_value/serializer.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

void main() {
  test('error codes are numbers, as the server sends them', () {
    final error = standardSerializers.deserializeWith(
      ThingsboardErrorResponse.serializer,
      {'status': 401, 'message': 'Authentication failed', 'errorCode': 10},
    )!;

    expect(error.errorCode, ThingsboardErrorCode.number10);
    expect(
      standardSerializers.serialize(
        ThingsboardErrorCode.number10,
        specifiedType: const FullType(ThingsboardErrorCode),
      ),
      10,
    );
  });

  group('AliasEntityId', () {
    test('an alias has no id', () {
      final id = standardSerializers.deserializeWith(AliasEntityId.serializer, {
        'entityType': 'CURRENT_USER',
      })!;

      expect(id.entityType, 'CURRENT_USER');
      expect(id.id, isNull);
    });
  });

  test('ColumnSettings is a DataKeySettings subtype', () {
    final settings = standardSerializers.deserialize({
      'type': 'COLUMN',
      'columnWidth': '100px',
    }, specifiedType: const FullType(DataKeySettings));

    expect(settings, isA<ColumnSettings>());
    expect((settings as ColumnSettings).columnWidth, '100px');
  });
}
