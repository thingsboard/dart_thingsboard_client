// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'microsoft_teams_notification_target_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MicrosoftTeamsNotificationTargetConfig
    extends MicrosoftTeamsNotificationTargetConfig {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final bool? useOldApi;
  @override
  final String channelName;
  @override
  final JsonObject? id;
  @override
  final String? title;
  @override
  final String webhookUrl;
  @override
  final String? email;
  @override
  final String? description;
  @override
  final String type;

  factory _$MicrosoftTeamsNotificationTargetConfig([
    void Function(MicrosoftTeamsNotificationTargetConfigBuilder)? updates,
  ]) => (MicrosoftTeamsNotificationTargetConfigBuilder()..update(updates))
      ._build();

  _$MicrosoftTeamsNotificationTargetConfig._({
    this.firstName,
    this.lastName,
    this.useOldApi,
    required this.channelName,
    this.id,
    this.title,
    required this.webhookUrl,
    this.email,
    this.description,
    required this.type,
  }) : super._();
  @override
  MicrosoftTeamsNotificationTargetConfig rebuild(
    void Function(MicrosoftTeamsNotificationTargetConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MicrosoftTeamsNotificationTargetConfigBuilder toBuilder() =>
      MicrosoftTeamsNotificationTargetConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MicrosoftTeamsNotificationTargetConfig &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        useOldApi == other.useOldApi &&
        channelName == other.channelName &&
        id == other.id &&
        title == other.title &&
        webhookUrl == other.webhookUrl &&
        email == other.email &&
        description == other.description &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, useOldApi.hashCode);
    _$hash = $jc(_$hash, channelName.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, webhookUrl.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'MicrosoftTeamsNotificationTargetConfig',
          )
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('useOldApi', useOldApi)
          ..add('channelName', channelName)
          ..add('id', id)
          ..add('title', title)
          ..add('webhookUrl', webhookUrl)
          ..add('email', email)
          ..add('description', description)
          ..add('type', type))
        .toString();
  }
}

class MicrosoftTeamsNotificationTargetConfigBuilder
    implements
        Builder<
          MicrosoftTeamsNotificationTargetConfig,
          MicrosoftTeamsNotificationTargetConfigBuilder
        >,
        NotificationTargetConfigBuilder {
  _$MicrosoftTeamsNotificationTargetConfig? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(covariant String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(covariant String? lastName) => _$this._lastName = lastName;

  bool? _useOldApi;
  bool? get useOldApi => _$this._useOldApi;
  set useOldApi(covariant bool? useOldApi) => _$this._useOldApi = useOldApi;

  String? _channelName;
  String? get channelName => _$this._channelName;
  set channelName(covariant String? channelName) =>
      _$this._channelName = channelName;

  JsonObject? _id;
  JsonObject? get id => _$this._id;
  set id(covariant JsonObject? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  String? _webhookUrl;
  String? get webhookUrl => _$this._webhookUrl;
  set webhookUrl(covariant String? webhookUrl) =>
      _$this._webhookUrl = webhookUrl;

  String? _email;
  String? get email => _$this._email;
  set email(covariant String? email) => _$this._email = email;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  MicrosoftTeamsNotificationTargetConfigBuilder() {
    MicrosoftTeamsNotificationTargetConfig._defaults(this);
  }

  MicrosoftTeamsNotificationTargetConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _useOldApi = $v.useOldApi;
      _channelName = $v.channelName;
      _id = $v.id;
      _title = $v.title;
      _webhookUrl = $v.webhookUrl;
      _email = $v.email;
      _description = $v.description;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MicrosoftTeamsNotificationTargetConfig other) {
    _$v = other as _$MicrosoftTeamsNotificationTargetConfig;
  }

  @override
  void update(
    void Function(MicrosoftTeamsNotificationTargetConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  MicrosoftTeamsNotificationTargetConfig build() => _build();

  _$MicrosoftTeamsNotificationTargetConfig _build() {
    final _$result =
        _$v ??
        _$MicrosoftTeamsNotificationTargetConfig._(
          firstName: firstName,
          lastName: lastName,
          useOldApi: useOldApi,
          channelName: BuiltValueNullFieldError.checkNotNull(
            channelName,
            r'MicrosoftTeamsNotificationTargetConfig',
            'channelName',
          ),
          id: id,
          title: title,
          webhookUrl: BuiltValueNullFieldError.checkNotNull(
            webhookUrl,
            r'MicrosoftTeamsNotificationTargetConfig',
            'webhookUrl',
          ),
          email: email,
          description: description,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'MicrosoftTeamsNotificationTargetConfig',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
