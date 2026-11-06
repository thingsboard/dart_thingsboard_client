// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_entity_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributesEntityView extends AttributesEntityView {
  @override
  final BuiltList<String> cs;
  @override
  final BuiltList<String> ss;
  @override
  final BuiltList<String> sh;

  factory _$AttributesEntityView([
    void Function(AttributesEntityViewBuilder)? updates,
  ]) => (AttributesEntityViewBuilder()..update(updates))._build();

  _$AttributesEntityView._({
    required this.cs,
    required this.ss,
    required this.sh,
  }) : super._();
  @override
  AttributesEntityView rebuild(
    void Function(AttributesEntityViewBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttributesEntityViewBuilder toBuilder() =>
      AttributesEntityViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributesEntityView &&
        cs == other.cs &&
        ss == other.ss &&
        sh == other.sh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cs.hashCode);
    _$hash = $jc(_$hash, ss.hashCode);
    _$hash = $jc(_$hash, sh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttributesEntityView')
          ..add('cs', cs)
          ..add('ss', ss)
          ..add('sh', sh))
        .toString();
  }
}

class AttributesEntityViewBuilder
    implements Builder<AttributesEntityView, AttributesEntityViewBuilder> {
  _$AttributesEntityView? _$v;

  ListBuilder<String>? _cs;
  ListBuilder<String> get cs => _$this._cs ??= ListBuilder<String>();
  set cs(ListBuilder<String>? cs) => _$this._cs = cs;

  ListBuilder<String>? _ss;
  ListBuilder<String> get ss => _$this._ss ??= ListBuilder<String>();
  set ss(ListBuilder<String>? ss) => _$this._ss = ss;

  ListBuilder<String>? _sh;
  ListBuilder<String> get sh => _$this._sh ??= ListBuilder<String>();
  set sh(ListBuilder<String>? sh) => _$this._sh = sh;

  AttributesEntityViewBuilder() {
    AttributesEntityView._defaults(this);
  }

  AttributesEntityViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cs = $v.cs.toBuilder();
      _ss = $v.ss.toBuilder();
      _sh = $v.sh.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributesEntityView other) {
    _$v = other as _$AttributesEntityView;
  }

  @override
  void update(void Function(AttributesEntityViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributesEntityView build() => _build();

  _$AttributesEntityView _build() {
    _$AttributesEntityView _$result;
    try {
      _$result =
          _$v ??
          _$AttributesEntityView._(
            cs: cs.build(),
            ss: ss.build(),
            sh: sh.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cs';
        cs.build();
        _$failedField = 'ss';
        ss.build();
        _$failedField = 'sh';
        sh.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AttributesEntityView',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
