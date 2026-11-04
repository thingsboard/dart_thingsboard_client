// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Notification extends Notification {
  @override
  final NotificationId? id;
  @override
  final int? createdTime;
  @override
  final NotificationRequestId? requestId;
  @override
  final UserId? recipientId;
  @override
  final NotificationType? type;
  @override
  final NotificationDeliveryMethod? deliveryMethod;
  @override
  final String? subject;
  @override
  final String? text;
  @override
  final JsonObject? additionalConfig;
  @override
  final NotificationInfo? info;
  @override
  final NotificationStatus? status;

  factory _$Notification([void Function(NotificationBuilder)? updates]) =>
      (NotificationBuilder()..update(updates))._build();

  _$Notification._({
    this.id,
    this.createdTime,
    this.requestId,
    this.recipientId,
    this.type,
    this.deliveryMethod,
    this.subject,
    this.text,
    this.additionalConfig,
    this.info,
    this.status,
  }) : super._();
  @override
  Notification rebuild(void Function(NotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationBuilder toBuilder() => NotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notification &&
        id == other.id &&
        createdTime == other.createdTime &&
        requestId == other.requestId &&
        recipientId == other.recipientId &&
        type == other.type &&
        deliveryMethod == other.deliveryMethod &&
        subject == other.subject &&
        text == other.text &&
        additionalConfig == other.additionalConfig &&
        info == other.info &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, recipientId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, deliveryMethod.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, additionalConfig.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Notification')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('requestId', requestId)
          ..add('recipientId', recipientId)
          ..add('type', type)
          ..add('deliveryMethod', deliveryMethod)
          ..add('subject', subject)
          ..add('text', text)
          ..add('additionalConfig', additionalConfig)
          ..add('info', info)
          ..add('status', status))
        .toString();
  }
}

class NotificationBuilder
    implements Builder<Notification, NotificationBuilder> {
  _$Notification? _$v;

  NotificationIdBuilder? _id;
  NotificationIdBuilder get id => _$this._id ??= NotificationIdBuilder();
  set id(NotificationIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  NotificationRequestIdBuilder? _requestId;
  NotificationRequestIdBuilder get requestId =>
      _$this._requestId ??= NotificationRequestIdBuilder();
  set requestId(NotificationRequestIdBuilder? requestId) =>
      _$this._requestId = requestId;

  UserIdBuilder? _recipientId;
  UserIdBuilder get recipientId => _$this._recipientId ??= UserIdBuilder();
  set recipientId(UserIdBuilder? recipientId) =>
      _$this._recipientId = recipientId;

  NotificationType? _type;
  NotificationType? get type => _$this._type;
  set type(NotificationType? type) => _$this._type = type;

  NotificationDeliveryMethod? _deliveryMethod;
  NotificationDeliveryMethod? get deliveryMethod => _$this._deliveryMethod;
  set deliveryMethod(NotificationDeliveryMethod? deliveryMethod) =>
      _$this._deliveryMethod = deliveryMethod;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  JsonObject? _additionalConfig;
  JsonObject? get additionalConfig => _$this._additionalConfig;
  set additionalConfig(JsonObject? additionalConfig) =>
      _$this._additionalConfig = additionalConfig;

  NotificationInfo? _info;
  NotificationInfo? get info => _$this._info;
  set info(NotificationInfo? info) => _$this._info = info;

  NotificationStatus? _status;
  NotificationStatus? get status => _$this._status;
  set status(NotificationStatus? status) => _$this._status = status;

  NotificationBuilder() {
    Notification._defaults(this);
  }

  NotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _requestId = $v.requestId?.toBuilder();
      _recipientId = $v.recipientId?.toBuilder();
      _type = $v.type;
      _deliveryMethod = $v.deliveryMethod;
      _subject = $v.subject;
      _text = $v.text;
      _additionalConfig = $v.additionalConfig;
      _info = $v.info;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notification other) {
    _$v = other as _$Notification;
  }

  @override
  void update(void Function(NotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Notification build() => _build();

  _$Notification _build() {
    _$Notification _$result;
    try {
      _$result =
          _$v ??
          _$Notification._(
            id: _id?.build(),
            createdTime: createdTime,
            requestId: _requestId?.build(),
            recipientId: _recipientId?.build(),
            type: type,
            deliveryMethod: deliveryMethod,
            subject: subject,
            text: text,
            additionalConfig: additionalConfig,
            info: info,
            status: status,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'requestId';
        _requestId?.build();
        _$failedField = 'recipientId';
        _recipientId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Notification',
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
