// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'self_registration_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class SelfRegistrationParamsBuilder {
  void replace(SelfRegistrationParams other);
  void update(void Function(SelfRegistrationParamsBuilder) updates);
  SelfRegistrationType? get type;
  set type(SelfRegistrationType? type);

  bool? get enabled;
  set enabled(bool? enabled);

  String? get title;
  set title(String? title);

  CaptchaParams? get captcha;
  set captcha(CaptchaParams? captcha);

  ListBuilder<GroupPermission> get permissions;
  set permissions(ListBuilder<GroupPermission>? permissions);

  NotificationTargetIdBuilder get notificationRecipient;
  set notificationRecipient(NotificationTargetIdBuilder? notificationRecipient);

  ListBuilder<SignUpField> get signUpFields;
  set signUpFields(ListBuilder<SignUpField>? signUpFields);

  String? get customerTitlePrefix;
  set customerTitlePrefix(String? customerTitlePrefix);

  bool? get showPrivacyPolicy;
  set showPrivacyPolicy(bool? showPrivacyPolicy);

  bool? get showTermsOfUse;
  set showTermsOfUse(bool? showTermsOfUse);

  DefaultDashboardParamsBuilder get defaultDashboard;
  set defaultDashboard(DefaultDashboardParamsBuilder? defaultDashboard);

  HomeDashboardParamsBuilder get homeDashboard;
  set homeDashboard(HomeDashboardParamsBuilder? homeDashboard);

  EntityGroupIdBuilder get customerGroupId;
  set customerGroupId(EntityGroupIdBuilder? customerGroupId);

  CustomMenuIdBuilder get customMenuId;
  set customMenuId(CustomMenuIdBuilder? customMenuId);
}

class _$$SelfRegistrationParams extends $SelfRegistrationParams {
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

  factory _$$SelfRegistrationParams([
    void Function($SelfRegistrationParamsBuilder)? updates,
  ]) => ($SelfRegistrationParamsBuilder()..update(updates))._build();

  _$$SelfRegistrationParams._({
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
  $SelfRegistrationParams rebuild(
    void Function($SelfRegistrationParamsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $SelfRegistrationParamsBuilder toBuilder() =>
      $SelfRegistrationParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $SelfRegistrationParams &&
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
    return (newBuiltValueToStringHelper(r'$SelfRegistrationParams')
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

class $SelfRegistrationParamsBuilder
    implements
        Builder<$SelfRegistrationParams, $SelfRegistrationParamsBuilder>,
        SelfRegistrationParamsBuilder {
  _$$SelfRegistrationParams? _$v;

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

  $SelfRegistrationParamsBuilder() {
    $SelfRegistrationParams._defaults(this);
  }

  $SelfRegistrationParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $SelfRegistrationParams other) {
    _$v = other as _$$SelfRegistrationParams;
  }

  @override
  void update(void Function($SelfRegistrationParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $SelfRegistrationParams build() => _build();

  _$$SelfRegistrationParams _build() {
    _$$SelfRegistrationParams _$result;
    try {
      _$result =
          _$v ??
          _$$SelfRegistrationParams._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'$SelfRegistrationParams',
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
          r'$SelfRegistrationParams',
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
