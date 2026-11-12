// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantProfile extends TenantProfile {
  @override
  final TenantProfileId? id;
  @override
  final int? createdTime;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? default_;
  @override
  final bool? isolatedTbRuleEngine;
  @override
  final TenantProfileData? profileData;

  factory _$TenantProfile([void Function(TenantProfileBuilder)? updates]) =>
      (TenantProfileBuilder()..update(updates))._build();

  _$TenantProfile._({
    this.id,
    this.createdTime,
    this.name,
    this.description,
    this.default_,
    this.isolatedTbRuleEngine,
    this.profileData,
  }) : super._();
  @override
  TenantProfile rebuild(void Function(TenantProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantProfileBuilder toBuilder() => TenantProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantProfile &&
        id == other.id &&
        createdTime == other.createdTime &&
        name == other.name &&
        description == other.description &&
        default_ == other.default_ &&
        isolatedTbRuleEngine == other.isolatedTbRuleEngine &&
        profileData == other.profileData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, isolatedTbRuleEngine.hashCode);
    _$hash = $jc(_$hash, profileData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantProfile')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('name', name)
          ..add('description', description)
          ..add('default_', default_)
          ..add('isolatedTbRuleEngine', isolatedTbRuleEngine)
          ..add('profileData', profileData))
        .toString();
  }
}

class TenantProfileBuilder
    implements Builder<TenantProfile, TenantProfileBuilder> {
  _$TenantProfile? _$v;

  TenantProfileIdBuilder? _id;
  TenantProfileIdBuilder get id => _$this._id ??= TenantProfileIdBuilder();
  set id(TenantProfileIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _default_;
  bool? get default_ => _$this._default_;
  set default_(bool? default_) => _$this._default_ = default_;

  bool? _isolatedTbRuleEngine;
  bool? get isolatedTbRuleEngine => _$this._isolatedTbRuleEngine;
  set isolatedTbRuleEngine(bool? isolatedTbRuleEngine) =>
      _$this._isolatedTbRuleEngine = isolatedTbRuleEngine;

  TenantProfileDataBuilder? _profileData;
  TenantProfileDataBuilder get profileData =>
      _$this._profileData ??= TenantProfileDataBuilder();
  set profileData(TenantProfileDataBuilder? profileData) =>
      _$this._profileData = profileData;

  TenantProfileBuilder() {
    TenantProfile._defaults(this);
  }

  TenantProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _name = $v.name;
      _description = $v.description;
      _default_ = $v.default_;
      _isolatedTbRuleEngine = $v.isolatedTbRuleEngine;
      _profileData = $v.profileData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantProfile other) {
    _$v = other as _$TenantProfile;
  }

  @override
  void update(void Function(TenantProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantProfile build() => _build();

  _$TenantProfile _build() {
    _$TenantProfile _$result;
    try {
      _$result =
          _$v ??
          _$TenantProfile._(
            id: _id?.build(),
            createdTime: createdTime,
            name: name,
            description: description,
            default_: default_,
            isolatedTbRuleEngine: isolatedTbRuleEngine,
            profileData: _profileData?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'profileData';
        _profileData?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TenantProfile',
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
