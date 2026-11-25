// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_client_registration_template_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuth2ClientRegistrationTemplateId
    extends OAuth2ClientRegistrationTemplateId {
  @override
  final String id;

  factory _$OAuth2ClientRegistrationTemplateId([
    void Function(OAuth2ClientRegistrationTemplateIdBuilder)? updates,
  ]) => (OAuth2ClientRegistrationTemplateIdBuilder()..update(updates))._build();

  _$OAuth2ClientRegistrationTemplateId._({required this.id}) : super._();
  @override
  OAuth2ClientRegistrationTemplateId rebuild(
    void Function(OAuth2ClientRegistrationTemplateIdBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OAuth2ClientRegistrationTemplateIdBuilder toBuilder() =>
      OAuth2ClientRegistrationTemplateIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2ClientRegistrationTemplateId && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'OAuth2ClientRegistrationTemplateId',
    )..add('id', id)).toString();
  }
}

class OAuth2ClientRegistrationTemplateIdBuilder
    implements
        Builder<
          OAuth2ClientRegistrationTemplateId,
          OAuth2ClientRegistrationTemplateIdBuilder
        > {
  _$OAuth2ClientRegistrationTemplateId? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  OAuth2ClientRegistrationTemplateIdBuilder() {
    OAuth2ClientRegistrationTemplateId._defaults(this);
  }

  OAuth2ClientRegistrationTemplateIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuth2ClientRegistrationTemplateId other) {
    _$v = other as _$OAuth2ClientRegistrationTemplateId;
  }

  @override
  void update(
    void Function(OAuth2ClientRegistrationTemplateIdBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2ClientRegistrationTemplateId build() => _build();

  _$OAuth2ClientRegistrationTemplateId _build() {
    final _$result =
        _$v ??
        _$OAuth2ClientRegistrationTemplateId._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'OAuth2ClientRegistrationTemplateId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
