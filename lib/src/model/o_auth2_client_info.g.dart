// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_client_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuth2ClientInfo extends OAuth2ClientInfo {
  @override
  final OAuth2ClientId? id;
  @override
  final int? createdTime;
  @override
  final String? title;
  @override
  final String? providerName;
  @override
  final BuiltList<PlatformType>? platforms;
  @override
  final String? name;

  factory _$OAuth2ClientInfo([
    void Function(OAuth2ClientInfoBuilder)? updates,
  ]) => (OAuth2ClientInfoBuilder()..update(updates))._build();

  _$OAuth2ClientInfo._({
    this.id,
    this.createdTime,
    this.title,
    this.providerName,
    this.platforms,
    this.name,
  }) : super._();
  @override
  OAuth2ClientInfo rebuild(void Function(OAuth2ClientInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OAuth2ClientInfoBuilder toBuilder() =>
      OAuth2ClientInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2ClientInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        title == other.title &&
        providerName == other.providerName &&
        platforms == other.platforms &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, providerName.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OAuth2ClientInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('title', title)
          ..add('providerName', providerName)
          ..add('platforms', platforms)
          ..add('name', name))
        .toString();
  }
}

class OAuth2ClientInfoBuilder
    implements Builder<OAuth2ClientInfo, OAuth2ClientInfoBuilder> {
  _$OAuth2ClientInfo? _$v;

  OAuth2ClientIdBuilder? _id;
  OAuth2ClientIdBuilder get id => _$this._id ??= OAuth2ClientIdBuilder();
  set id(OAuth2ClientIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _providerName;
  String? get providerName => _$this._providerName;
  set providerName(String? providerName) => _$this._providerName = providerName;

  ListBuilder<PlatformType>? _platforms;
  ListBuilder<PlatformType> get platforms =>
      _$this._platforms ??= ListBuilder<PlatformType>();
  set platforms(ListBuilder<PlatformType>? platforms) =>
      _$this._platforms = platforms;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  OAuth2ClientInfoBuilder() {
    OAuth2ClientInfo._defaults(this);
  }

  OAuth2ClientInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _title = $v.title;
      _providerName = $v.providerName;
      _platforms = $v.platforms?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuth2ClientInfo other) {
    _$v = other as _$OAuth2ClientInfo;
  }

  @override
  void update(void Function(OAuth2ClientInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2ClientInfo build() => _build();

  _$OAuth2ClientInfo _build() {
    _$OAuth2ClientInfo _$result;
    try {
      _$result =
          _$v ??
          _$OAuth2ClientInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            title: title,
            providerName: providerName,
            platforms: _platforms?.build(),
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'platforms';
        _platforms?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OAuth2ClientInfo',
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
