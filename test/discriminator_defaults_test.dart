// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// The generated subtypes of a discriminated parent (EntityFilter, EntityId)
// default their discriminator field, so callers never set it by hand.

import 'package:test/test.dart';
import 'package:thingsboard_client/src/model/alarm_id.dart';
import 'package:thingsboard_client/src/model/device_id.dart';
import 'package:thingsboard_client/src/model/device_type_filter.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/entity_type_filter.dart';
import 'package:thingsboard_client/src/model/single_entity_filter.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/thingsboard_client.dart'
    show standardSerializers;

void main() {
  test('entity filter subtypes get their discriminator', () {
    expect(
      standardSerializers.serializeWith(
        SingleEntityFilter.serializer,
        SingleEntityFilter(),
      ),
      containsPair('type', 'singleEntity'),
    );
    expect(
      standardSerializers.serializeWith(
        EntityTypeFilter.serializer,
        EntityTypeFilter(),
      ),
      containsPair('type', 'entityType'),
    );
    expect(
      standardSerializers.serializeWith(
        DeviceTypeFilter.serializer,
        DeviceTypeFilter(),
      ),
      containsPair('type', 'deviceType'),
    );
  });

  test('entity id subtypes get their entity type', () {
    expect(DeviceId((b) => b..id = 'u').entityType, EntityType.DEVICE);
    expect(TenantId((b) => b..id = 'u').entityType, EntityType.TENANT);
    expect(AlarmId((b) => b..id = 'u').entityType, EntityType.ALARM);
  });

  test('an explicit discriminator still wins', () {
    final other = SingleEntityFilter((b) => b..type = 'custom');
    expect(other.type, 'custom');
  });
}
