// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_self_registration_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileSelfRegistrationParams extends MobileSelfRegistrationParams {
  @override
  final MobileRedirectParams redirect;
  @override
  final String? termsOfUse;
  @override
  final String? privacyPolicy;
  @override
  final SelfRegistrationType type;
  @override
  final bool? enabled;
  @override
  final String? title;
  @override
  final CaptchaParams? captcha;
  @override
  final BuiltList<GroupPermission>? permissions;
  @override
  final NotificationTargetId? notificationRecipient;
  @override
  final BuiltList<SignUpField>? signUpFields;
  @override
  final String? customerTitlePrefix;
  @override
  final bool? showPrivacyPolicy;
  @override
  final bool? showTermsOfUse;
  @override
  final DefaultDashboardParams? defaultDashboard;
  @override
  final HomeDashboardParams? homeDashboard;
  @override
  final EntityGroupId? customerGroupId;
  @override
  final CustomMenuId? customMenuId;

  factory _$MobileSelfRegistrationParams([
    void Function(MobileSelfRegistrationParamsBuilder)? updates,
  ]) => (MobileSelfRegistrationParamsBuilder()..update(updates))._build();

  _$MobileSelfRegistrationParams._({
    required this.redirect,
    this.termsOfUse,
    this.privacyPolicy,
    required this.type,
    this.enabled,
    this.title,
    this.captcha,
    this.permissions,
    this.notificationRecipient,
    this.signUpFields,
    this.customerTitlePrefix,
    this.showPrivacyPolicy,
    this.showTermsOfUse,
    this.defaultDashboard,
    this.homeDashboard,
    this.customerGroupId,
    this.customMenuId,
  }) : super._();
  @override
  MobileSelfRegistrationParams rebuild(
    void Function(MobileSelfRegistrationParamsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MobileSelfRegistrationParamsBuilder toBuilder() =>
      MobileSelfRegistrationParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileSelfRegistrationParams &&
        redirect == other.redirect &&
        termsOfUse == other.termsOfUse &&
        privacyPolicy == other.privacyPolicy &&
        type == other.type &&
        enabled == other.enabled &&
        title == other.title &&
        captcha == other.captcha &&
        permissions == other.permissions &&
        notificationRecipient == other.notificationRecipient &&
        signUpFields == other.signUpFields &&
        customerTitlePrefix == other.customerTitlePrefix &&
        showPrivacyPolicy == other.showPrivacyPolicy &&
        showTermsOfUse == other.showTermsOfUse &&
        defaultDashboard == other.defaultDashboard &&
        homeDashboard == other.homeDashboard &&
        customerGroupId == other.customerGroupId &&
        customMenuId == other.customMenuId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, redirect.hashCode);
    _$hash = $jc(_$hash, termsOfUse.hashCode);
    _$hash = $jc(_$hash, privacyPolicy.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, captcha.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, notificationRecipient.hashCode);
    _$hash = $jc(_$hash, signUpFields.hashCode);
    _$hash = $jc(_$hash, customerTitlePrefix.hashCode);
    _$hash = $jc(_$hash, showPrivacyPolicy.hashCode);
    _$hash = $jc(_$hash, showTermsOfUse.hashCode);
    _$hash = $jc(_$hash, defaultDashboard.hashCode);
    _$hash = $jc(_$hash, homeDashboard.hashCode);
    _$hash = $jc(_$hash, customerGroupId.hashCode);
    _$hash = $jc(_$hash, customMenuId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MobileSelfRegistrationParams')
          ..add('redirect', redirect)
          ..add('termsOfUse', termsOfUse)
          ..add('privacyPolicy', privacyPolicy)
          ..add('type', type)
          ..add('enabled', enabled)
          ..add('title', title)
          ..add('captcha', captcha)
          ..add('permissions', permissions)
          ..add('notificationRecipient', notificationRecipient)
          ..add('signUpFields', signUpFields)
          ..add('customerTitlePrefix', customerTitlePrefix)
          ..add('showPrivacyPolicy', showPrivacyPolicy)
          ..add('showTermsOfUse', showTermsOfUse)
          ..add('defaultDashboard', defaultDashboard)
          ..add('homeDashboard', homeDashboard)
          ..add('customerGroupId', customerGroupId)
          ..add('customMenuId', customMenuId))
        .toString();
  }
}

class MobileSelfRegistrationParamsBuilder
    implements
        Builder<
          MobileSelfRegistrationParams,
          MobileSelfRegistrationParamsBuilder
        >,
        SelfRegistrationParamsBuilder {
  _$MobileSelfRegistrationParams? _$v;

  MobileRedirectParamsBuilder? _redirect;
  MobileRedirectParamsBuilder get redirect =>
      _$this._redirect ??= MobileRedirectParamsBuilder();
  set redirect(covariant MobileRedirectParamsBuilder? redirect) =>
      _$this._redirect = redirect;

  String? _termsOfUse;
  String? get termsOfUse => _$this._termsOfUse;
  set termsOfUse(covariant String? termsOfUse) =>
      _$this._termsOfUse = termsOfUse;

  String? _privacyPolicy;
  String? get privacyPolicy => _$this._privacyPolicy;
  set privacyPolicy(covariant String? privacyPolicy) =>
      _$this._privacyPolicy = privacyPolicy;

  SelfRegistrationType? _type;
  SelfRegistrationType? get type => _$this._type;
  set type(covariant SelfRegistrationType? type) => _$this._type = type;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(covariant bool? enabled) => _$this._enabled = enabled;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  CaptchaParams? _captcha;
  CaptchaParams? get captcha => _$this._captcha;
  set captcha(covariant CaptchaParams? captcha) => _$this._captcha = captcha;

  ListBuilder<GroupPermission>? _permissions;
  ListBuilder<GroupPermission> get permissions =>
      _$this._permissions ??= ListBuilder<GroupPermission>();
  set permissions(covariant ListBuilder<GroupPermission>? permissions) =>
      _$this._permissions = permissions;

  NotificationTargetIdBuilder? _notificationRecipient;
  NotificationTargetIdBuilder get notificationRecipient =>
      _$this._notificationRecipient ??= NotificationTargetIdBuilder();
  set notificationRecipient(
    covariant NotificationTargetIdBuilder? notificationRecipient,
  ) => _$this._notificationRecipient = notificationRecipient;

  ListBuilder<SignUpField>? _signUpFields;
  ListBuilder<SignUpField> get signUpFields =>
      _$this._signUpFields ??= ListBuilder<SignUpField>();
  set signUpFields(covariant ListBuilder<SignUpField>? signUpFields) =>
      _$this._signUpFields = signUpFields;

  String? _customerTitlePrefix;
  String? get customerTitlePrefix => _$this._customerTitlePrefix;
  set customerTitlePrefix(covariant String? customerTitlePrefix) =>
      _$this._customerTitlePrefix = customerTitlePrefix;

  bool? _showPrivacyPolicy;
  bool? get showPrivacyPolicy => _$this._showPrivacyPolicy;
  set showPrivacyPolicy(covariant bool? showPrivacyPolicy) =>
      _$this._showPrivacyPolicy = showPrivacyPolicy;

  bool? _showTermsOfUse;
  bool? get showTermsOfUse => _$this._showTermsOfUse;
  set showTermsOfUse(covariant bool? showTermsOfUse) =>
      _$this._showTermsOfUse = showTermsOfUse;

  DefaultDashboardParamsBuilder? _defaultDashboard;
  DefaultDashboardParamsBuilder get defaultDashboard =>
      _$this._defaultDashboard ??= DefaultDashboardParamsBuilder();
  set defaultDashboard(
    covariant DefaultDashboardParamsBuilder? defaultDashboard,
  ) => _$this._defaultDashboard = defaultDashboard;

  HomeDashboardParamsBuilder? _homeDashboard;
  HomeDashboardParamsBuilder get homeDashboard =>
      _$this._homeDashboard ??= HomeDashboardParamsBuilder();
  set homeDashboard(covariant HomeDashboardParamsBuilder? homeDashboard) =>
      _$this._homeDashboard = homeDashboard;

  EntityGroupIdBuilder? _customerGroupId;
  EntityGroupIdBuilder get customerGroupId =>
      _$this._customerGroupId ??= EntityGroupIdBuilder();
  set customerGroupId(covariant EntityGroupIdBuilder? customerGroupId) =>
      _$this._customerGroupId = customerGroupId;

  CustomMenuIdBuilder? _customMenuId;
  CustomMenuIdBuilder get customMenuId =>
      _$this._customMenuId ??= CustomMenuIdBuilder();
  set customMenuId(covariant CustomMenuIdBuilder? customMenuId) =>
      _$this._customMenuId = customMenuId;

  MobileSelfRegistrationParamsBuilder() {
    MobileSelfRegistrationParams._defaults(this);
  }

  MobileSelfRegistrationParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _redirect = $v.redirect.toBuilder();
      _termsOfUse = $v.termsOfUse;
      _privacyPolicy = $v.privacyPolicy;
      _type = $v.type;
      _enabled = $v.enabled;
      _title = $v.title;
      _captcha = $v.captcha;
      _permissions = $v.permissions?.toBuilder();
      _notificationRecipient = $v.notificationRecipient?.toBuilder();
      _signUpFields = $v.signUpFields?.toBuilder();
      _customerTitlePrefix = $v.customerTitlePrefix;
      _showPrivacyPolicy = $v.showPrivacyPolicy;
      _showTermsOfUse = $v.showTermsOfUse;
      _defaultDashboard = $v.defaultDashboard?.toBuilder();
      _homeDashboard = $v.homeDashboard?.toBuilder();
      _customerGroupId = $v.customerGroupId?.toBuilder();
      _customMenuId = $v.customMenuId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MobileSelfRegistrationParams other) {
    _$v = other as _$MobileSelfRegistrationParams;
  }

  @override
  void update(void Function(MobileSelfRegistrationParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileSelfRegistrationParams build() => _build();

  _$MobileSelfRegistrationParams _build() {
    _$MobileSelfRegistrationParams _$result;
    try {
      _$result =
          _$v ??
          _$MobileSelfRegistrationParams._(
            redirect: redirect.build(),
            termsOfUse: termsOfUse,
            privacyPolicy: privacyPolicy,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'MobileSelfRegistrationParams',
              'type',
            ),
            enabled: enabled,
            title: title,
            captcha: captcha,
            permissions: _permissions?.build(),
            notificationRecipient: _notificationRecipient?.build(),
            signUpFields: _signUpFields?.build(),
            customerTitlePrefix: customerTitlePrefix,
            showPrivacyPolicy: showPrivacyPolicy,
            showTermsOfUse: showTermsOfUse,
            defaultDashboard: _defaultDashboard?.build(),
            homeDashboard: _homeDashboard?.build(),
            customerGroupId: _customerGroupId?.build(),
            customMenuId: _customMenuId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'redirect';
        redirect.build();

        _$failedField = 'permissions';
        _permissions?.build();
        _$failedField = 'notificationRecipient';
        _notificationRecipient?.build();
        _$failedField = 'signUpFields';
        _signUpFields?.build();

        _$failedField = 'defaultDashboard';
        _defaultDashboard?.build();
        _$failedField = 'homeDashboard';
        _homeDashboard?.build();
        _$failedField = 'customerGroupId';
        _customerGroupId?.build();
        _$failedField = 'customMenuId';
        _customMenuId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MobileSelfRegistrationParams',
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
