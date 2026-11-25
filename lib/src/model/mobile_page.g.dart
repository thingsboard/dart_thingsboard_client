// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class MobilePageBuilder {
  void replace(MobilePage other);
  void update(void Function(MobilePageBuilder) updates);
  MobilePageType? get type;
  set type(MobilePageType? type);

  bool? get visible;
  set visible(bool? visible);
}

class _$$MobilePage extends $MobilePage {
  @override
  final MobilePageType type;
  @override
  final bool? visible;

  factory _$$MobilePage([void Function($MobilePageBuilder)? updates]) =>
      ($MobilePageBuilder()..update(updates))._build();

  _$$MobilePage._({required this.type, this.visible}) : super._();
  @override
  $MobilePage rebuild(void Function($MobilePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $MobilePageBuilder toBuilder() => $MobilePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $MobilePage &&
        type == other.type &&
        visible == other.visible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$MobilePage')
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class $MobilePageBuilder
    implements Builder<$MobilePage, $MobilePageBuilder>, MobilePageBuilder {
  _$$MobilePage? _$v;

  MobilePageType? _type;
  MobilePageType? get type => _$this._type;
  set type(covariant MobilePageType? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  $MobilePageBuilder() {
    $MobilePage._defaults(this);
  }

  $MobilePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _visible = $v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $MobilePage other) {
    _$v = other as _$$MobilePage;
  }

  @override
  void update(void Function($MobilePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $MobilePage build() => _build();

  _$$MobilePage _build() {
    final _$result =
        _$v ??
        _$$MobilePage._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$MobilePage',
            'type',
          ),
          visible: visible,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
