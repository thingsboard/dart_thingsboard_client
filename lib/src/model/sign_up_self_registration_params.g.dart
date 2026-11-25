// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_self_registration_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpSelfRegistrationParams extends SignUpSelfRegistrationParams {
  @override
  final String? title;
  @override
  final CaptchaParams? captcha;
  @override
  final BuiltList<SignUpField>? fields;
  @override
  final bool? showPrivacyPolicy;
  @override
  final bool? showTermsOfUse;

  factory _$SignUpSelfRegistrationParams([
    void Function(SignUpSelfRegistrationParamsBuilder)? updates,
  ]) => (SignUpSelfRegistrationParamsBuilder()..update(updates))._build();

  _$SignUpSelfRegistrationParams._({
    this.title,
    this.captcha,
    this.fields,
    this.showPrivacyPolicy,
    this.showTermsOfUse,
  }) : super._();
  @override
  SignUpSelfRegistrationParams rebuild(
    void Function(SignUpSelfRegistrationParamsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SignUpSelfRegistrationParamsBuilder toBuilder() =>
      SignUpSelfRegistrationParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpSelfRegistrationParams &&
        title == other.title &&
        captcha == other.captcha &&
        fields == other.fields &&
        showPrivacyPolicy == other.showPrivacyPolicy &&
        showTermsOfUse == other.showTermsOfUse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, captcha.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, showPrivacyPolicy.hashCode);
    _$hash = $jc(_$hash, showTermsOfUse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpSelfRegistrationParams')
          ..add('title', title)
          ..add('captcha', captcha)
          ..add('fields', fields)
          ..add('showPrivacyPolicy', showPrivacyPolicy)
          ..add('showTermsOfUse', showTermsOfUse))
        .toString();
  }
}

class SignUpSelfRegistrationParamsBuilder
    implements
        Builder<
          SignUpSelfRegistrationParams,
          SignUpSelfRegistrationParamsBuilder
        > {
  _$SignUpSelfRegistrationParams? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  CaptchaParams? _captcha;
  CaptchaParams? get captcha => _$this._captcha;
  set captcha(CaptchaParams? captcha) => _$this._captcha = captcha;

  ListBuilder<SignUpField>? _fields;
  ListBuilder<SignUpField> get fields =>
      _$this._fields ??= ListBuilder<SignUpField>();
  set fields(ListBuilder<SignUpField>? fields) => _$this._fields = fields;

  bool? _showPrivacyPolicy;
  bool? get showPrivacyPolicy => _$this._showPrivacyPolicy;
  set showPrivacyPolicy(bool? showPrivacyPolicy) =>
      _$this._showPrivacyPolicy = showPrivacyPolicy;

  bool? _showTermsOfUse;
  bool? get showTermsOfUse => _$this._showTermsOfUse;
  set showTermsOfUse(bool? showTermsOfUse) =>
      _$this._showTermsOfUse = showTermsOfUse;

  SignUpSelfRegistrationParamsBuilder() {
    SignUpSelfRegistrationParams._defaults(this);
  }

  SignUpSelfRegistrationParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _captcha = $v.captcha;
      _fields = $v.fields?.toBuilder();
      _showPrivacyPolicy = $v.showPrivacyPolicy;
      _showTermsOfUse = $v.showTermsOfUse;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpSelfRegistrationParams other) {
    _$v = other as _$SignUpSelfRegistrationParams;
  }

  @override
  void update(void Function(SignUpSelfRegistrationParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpSelfRegistrationParams build() => _build();

  _$SignUpSelfRegistrationParams _build() {
    _$SignUpSelfRegistrationParams _$result;
    try {
      _$result =
          _$v ??
          _$SignUpSelfRegistrationParams._(
            title: title,
            captcha: captcha,
            fields: _fields?.build(),
            showPrivacyPolicy: showPrivacyPolicy,
            showTermsOfUse: showTermsOfUse,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SignUpSelfRegistrationParams',
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
