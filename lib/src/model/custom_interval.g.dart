// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_interval.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomInterval extends CustomInterval {
  @override
  final String tz;
  @override
  final int? offsetSec;
  @override
  final int durationSec;
  @override
  final String type;

  factory _$CustomInterval([void Function(CustomIntervalBuilder)? updates]) =>
      (CustomIntervalBuilder()..update(updates))._build();

  _$CustomInterval._({
    required this.tz,
    this.offsetSec,
    required this.durationSec,
    required this.type,
  }) : super._();
  @override
  CustomInterval rebuild(void Function(CustomIntervalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomIntervalBuilder toBuilder() => CustomIntervalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomInterval &&
        tz == other.tz &&
        offsetSec == other.offsetSec &&
        durationSec == other.durationSec &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tz.hashCode);
    _$hash = $jc(_$hash, offsetSec.hashCode);
    _$hash = $jc(_$hash, durationSec.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomInterval')
          ..add('tz', tz)
          ..add('offsetSec', offsetSec)
          ..add('durationSec', durationSec)
          ..add('type', type))
        .toString();
  }
}

class CustomIntervalBuilder
    implements
        Builder<CustomInterval, CustomIntervalBuilder>,
        AggIntervalBuilder {
  _$CustomInterval? _$v;

  String? _tz;
  String? get tz => _$this._tz;
  set tz(covariant String? tz) => _$this._tz = tz;

  int? _offsetSec;
  int? get offsetSec => _$this._offsetSec;
  set offsetSec(covariant int? offsetSec) => _$this._offsetSec = offsetSec;

  int? _durationSec;
  int? get durationSec => _$this._durationSec;
  set durationSec(covariant int? durationSec) =>
      _$this._durationSec = durationSec;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  CustomIntervalBuilder() {
    CustomInterval._defaults(this);
  }

  CustomIntervalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tz = $v.tz;
      _offsetSec = $v.offsetSec;
      _durationSec = $v.durationSec;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CustomInterval other) {
    _$v = other as _$CustomInterval;
  }

  @override
  void update(void Function(CustomIntervalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomInterval build() => _build();

  _$CustomInterval _build() {
    final _$result =
        _$v ??
        _$CustomInterval._(
          tz: BuiltValueNullFieldError.checkNotNull(
            tz,
            r'CustomInterval',
            'tz',
          ),
          offsetSec: offsetSec,
          durationSec: BuiltValueNullFieldError.checkNotNull(
            durationSec,
            r'CustomInterval',
            'durationSec',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'CustomInterval',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
