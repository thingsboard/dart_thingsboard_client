// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_footer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HeaderFooter extends HeaderFooter {
  @override
  final bool? enabled;
  @override
  final BuiltList<ReportComponent> components;
  @override
  final JsonObject? firstPage;

  factory _$HeaderFooter([void Function(HeaderFooterBuilder)? updates]) =>
      (HeaderFooterBuilder()..update(updates))._build();

  _$HeaderFooter._({this.enabled, required this.components, this.firstPage})
    : super._();
  @override
  HeaderFooter rebuild(void Function(HeaderFooterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeaderFooterBuilder toBuilder() => HeaderFooterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeaderFooter &&
        enabled == other.enabled &&
        components == other.components &&
        firstPage == other.firstPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, firstPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HeaderFooter')
          ..add('enabled', enabled)
          ..add('components', components)
          ..add('firstPage', firstPage))
        .toString();
  }
}

class HeaderFooterBuilder
    implements Builder<HeaderFooter, HeaderFooterBuilder> {
  _$HeaderFooter? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  ListBuilder<ReportComponent>? _components;
  ListBuilder<ReportComponent> get components =>
      _$this._components ??= ListBuilder<ReportComponent>();
  set components(ListBuilder<ReportComponent>? components) =>
      _$this._components = components;

  JsonObject? _firstPage;
  JsonObject? get firstPage => _$this._firstPage;
  set firstPage(JsonObject? firstPage) => _$this._firstPage = firstPage;

  HeaderFooterBuilder() {
    HeaderFooter._defaults(this);
  }

  HeaderFooterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _components = $v.components.toBuilder();
      _firstPage = $v.firstPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HeaderFooter other) {
    _$v = other as _$HeaderFooter;
  }

  @override
  void update(void Function(HeaderFooterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HeaderFooter build() => _build();

  _$HeaderFooter _build() {
    _$HeaderFooter _$result;
    try {
      _$result =
          _$v ??
          _$HeaderFooter._(
            enabled: enabled,
            components: components.build(),
            firstPage: firstPage,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        components.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HeaderFooter',
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
