// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// A palette left on "Default" in the web UI is stored as {type: null}, and the
// server returns it as is when no white-labeling level sets a palette
//. The spec has these fields optional, as in
// thingsboard/thingsboard#16373; a spec from a server without it fails here.
import 'package:test/test.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

void main() {
  final deserializers =
      <String, PaletteSettings? Function(Map<String, Object?>)>{
        'WhiteLabelingParams': (json) => standardSerializers
            .deserializeWith(WhiteLabelingParams.serializer, json)!
            .paletteSettings,
        'LoginWhiteLabelingParams': (json) => standardSerializers
            .deserializeWith(LoginWhiteLabelingParams.serializer, json)!
            .paletteSettings,
      };

  deserializers.forEach((type, paletteSettingsOf) {
    group('$type paletteSettings deserialization', () {
      test('palettes left on Default (type: null)', () {
        final settings = paletteSettingsOf({
          'paletteSettings': {
            'primaryPalette': {'type': null},
            'accentPalette': {'type': null},
          },
        })!;

        expect(settings.primaryPalette!.type, isNull);
        expect(settings.accentPalette!.type, isNull);
      });

      test('palettes missing from the settings', () {
        final settings = paletteSettingsOf({
          'paletteSettings': <String, Object?>{},
        })!;

        expect(settings.primaryPalette, isNull);
        expect(settings.accentPalette, isNull);
      });

      test('a configured palette keeps its type and colors', () {
        final settings = paletteSettingsOf({
          'paletteSettings': {
            'primaryPalette': {
              'type': 'custom',
              'extends': 'blue',
              'colors': {'500': '#305680'},
            },
          },
        })!;

        final primary = settings.primaryPalette!;
        expect(primary.type, 'custom');
        expect(primary.extends_, 'blue');
        expect(primary.colors!['500'], '#305680');
      });
    });
  });
}
