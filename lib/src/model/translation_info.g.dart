// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TranslationInfo extends TranslationInfo {
  @override
  final String? localeCode;
  @override
  final String? language;
  @override
  final String? country;
  @override
  final int? progress;
  @override
  final bool? customized;

  factory _$TranslationInfo([void Function(TranslationInfoBuilder)? updates]) =>
      (TranslationInfoBuilder()..update(updates))._build();

  _$TranslationInfo._({
    this.localeCode,
    this.language,
    this.country,
    this.progress,
    this.customized,
  }) : super._();
  @override
  TranslationInfo rebuild(void Function(TranslationInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationInfoBuilder toBuilder() => TranslationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationInfo &&
        localeCode == other.localeCode &&
        language == other.language &&
        country == other.country &&
        progress == other.progress &&
        customized == other.customized;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localeCode.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, customized.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TranslationInfo')
          ..add('localeCode', localeCode)
          ..add('language', language)
          ..add('country', country)
          ..add('progress', progress)
          ..add('customized', customized))
        .toString();
  }
}

class TranslationInfoBuilder
    implements Builder<TranslationInfo, TranslationInfoBuilder> {
  _$TranslationInfo? _$v;

  String? _localeCode;
  String? get localeCode => _$this._localeCode;
  set localeCode(String? localeCode) => _$this._localeCode = localeCode;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _progress;
  int? get progress => _$this._progress;
  set progress(int? progress) => _$this._progress = progress;

  bool? _customized;
  bool? get customized => _$this._customized;
  set customized(bool? customized) => _$this._customized = customized;

  TranslationInfoBuilder() {
    TranslationInfo._defaults(this);
  }

  TranslationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localeCode = $v.localeCode;
      _language = $v.language;
      _country = $v.country;
      _progress = $v.progress;
      _customized = $v.customized;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationInfo other) {
    _$v = other as _$TranslationInfo;
  }

  @override
  void update(void Function(TranslationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TranslationInfo build() => _build();

  _$TranslationInfo _build() {
    final _$result =
        _$v ??
        _$TranslationInfo._(
          localeCode: localeCode,
          language: language,
          country: country,
          progress: progress,
          customized: customized,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
