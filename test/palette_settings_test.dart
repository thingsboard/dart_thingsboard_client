// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// A palette left on "Default" in the web UI is stored as {type: null}; the
// palette fields are optional since thingsboard/thingsboard#16373, and a spec
// without it fails here. LoginWhiteLabelingParams uses the same schemas.
import 'package:test/test.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

PaletteSettings _paletteSettings(Map<String, Object?> json) =>
    standardSerializers
        .deserializeWith(WhiteLabelingParams.serializer, json)!
        .paletteSettings!;

void main() {
  test('palettes left on Default (type: null)', () {
    final settings = _paletteSettings({
      'paletteSettings': {
        'primaryPalette': {'type': null},
        'accentPalette': {'type': null},
      },
    });

    expect(settings.primaryPalette!.type, isNull);
    expect(settings.accentPalette!.type, isNull);
  });

  test('palettes missing from the settings', () {
    final settings = _paletteSettings({'paletteSettings': <String, Object?>{}});

    expect(settings.primaryPalette, isNull);
    expect(settings.accentPalette, isNull);
  });
}
