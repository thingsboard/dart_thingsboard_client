// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quarter_interval.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuarterInterval extends QuarterInterval {
  @override
  final String tz;
  @override
  final int? offsetSec;
  @override
  final String type;

  factory _$QuarterInterval([void Function(QuarterIntervalBuilder)? updates]) =>
      (QuarterIntervalBuilder()..update(updates))._build();

  _$QuarterInterval._({required this.tz, this.offsetSec, required this.type})
    : super._();
  @override
  QuarterInterval rebuild(void Function(QuarterIntervalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuarterIntervalBuilder toBuilder() => QuarterIntervalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuarterInterval &&
        tz == other.tz &&
        offsetSec == other.offsetSec &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tz.hashCode);
    _$hash = $jc(_$hash, offsetSec.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuarterInterval')
          ..add('tz', tz)
          ..add('offsetSec', offsetSec)
          ..add('type', type))
        .toString();
  }
}

class QuarterIntervalBuilder
    implements
        Builder<QuarterInterval, QuarterIntervalBuilder>,
        AggIntervalBuilder {
  _$QuarterInterval? _$v;

  String? _tz;
  String? get tz => _$this._tz;
  set tz(covariant String? tz) => _$this._tz = tz;

  int? _offsetSec;
  int? get offsetSec => _$this._offsetSec;
  set offsetSec(covariant int? offsetSec) => _$this._offsetSec = offsetSec;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  QuarterIntervalBuilder() {
    QuarterInterval._defaults(this);
  }

  QuarterIntervalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tz = $v.tz;
      _offsetSec = $v.offsetSec;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant QuarterInterval other) {
    _$v = other as _$QuarterInterval;
  }

  @override
  void update(void Function(QuarterIntervalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuarterInterval build() => _build();

  _$QuarterInterval _build() {
    final _$result =
        _$v ??
        _$QuarterInterval._(
          tz: BuiltValueNullFieldError.checkNotNull(
            tz,
            r'QuarterInterval',
            'tz',
          ),
          offsetSec: offsetSec,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'QuarterInterval',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
