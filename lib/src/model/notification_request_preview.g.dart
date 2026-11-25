// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request_preview.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationRequestPreview extends NotificationRequestPreview {
  @override
  final BuiltMap<String, DeliveryMethodNotificationTemplate>?
  processedTemplates;
  @override
  final int? totalRecipientsCount;
  @override
  final BuiltMap<String, int>? recipientsCountByTarget;
  @override
  final BuiltList<String>? recipientsPreview;

  factory _$NotificationRequestPreview([
    void Function(NotificationRequestPreviewBuilder)? updates,
  ]) => (NotificationRequestPreviewBuilder()..update(updates))._build();

  _$NotificationRequestPreview._({
    this.processedTemplates,
    this.totalRecipientsCount,
    this.recipientsCountByTarget,
    this.recipientsPreview,
  }) : super._();
  @override
  NotificationRequestPreview rebuild(
    void Function(NotificationRequestPreviewBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationRequestPreviewBuilder toBuilder() =>
      NotificationRequestPreviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRequestPreview &&
        processedTemplates == other.processedTemplates &&
        totalRecipientsCount == other.totalRecipientsCount &&
        recipientsCountByTarget == other.recipientsCountByTarget &&
        recipientsPreview == other.recipientsPreview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, processedTemplates.hashCode);
    _$hash = $jc(_$hash, totalRecipientsCount.hashCode);
    _$hash = $jc(_$hash, recipientsCountByTarget.hashCode);
    _$hash = $jc(_$hash, recipientsPreview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationRequestPreview')
          ..add('processedTemplates', processedTemplates)
          ..add('totalRecipientsCount', totalRecipientsCount)
          ..add('recipientsCountByTarget', recipientsCountByTarget)
          ..add('recipientsPreview', recipientsPreview))
        .toString();
  }
}

class NotificationRequestPreviewBuilder
    implements
        Builder<NotificationRequestPreview, NotificationRequestPreviewBuilder> {
  _$NotificationRequestPreview? _$v;

  MapBuilder<String, DeliveryMethodNotificationTemplate>? _processedTemplates;
  MapBuilder<String, DeliveryMethodNotificationTemplate>
  get processedTemplates => _$this._processedTemplates ??=
      MapBuilder<String, DeliveryMethodNotificationTemplate>();
  set processedTemplates(
    MapBuilder<String, DeliveryMethodNotificationTemplate>? processedTemplates,
  ) => _$this._processedTemplates = processedTemplates;

  int? _totalRecipientsCount;
  int? get totalRecipientsCount => _$this._totalRecipientsCount;
  set totalRecipientsCount(int? totalRecipientsCount) =>
      _$this._totalRecipientsCount = totalRecipientsCount;

  MapBuilder<String, int>? _recipientsCountByTarget;
  MapBuilder<String, int> get recipientsCountByTarget =>
      _$this._recipientsCountByTarget ??= MapBuilder<String, int>();
  set recipientsCountByTarget(
    MapBuilder<String, int>? recipientsCountByTarget,
  ) => _$this._recipientsCountByTarget = recipientsCountByTarget;

  ListBuilder<String>? _recipientsPreview;
  ListBuilder<String> get recipientsPreview =>
      _$this._recipientsPreview ??= ListBuilder<String>();
  set recipientsPreview(ListBuilder<String>? recipientsPreview) =>
      _$this._recipientsPreview = recipientsPreview;

  NotificationRequestPreviewBuilder() {
    NotificationRequestPreview._defaults(this);
  }

  NotificationRequestPreviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _processedTemplates = $v.processedTemplates?.toBuilder();
      _totalRecipientsCount = $v.totalRecipientsCount;
      _recipientsCountByTarget = $v.recipientsCountByTarget?.toBuilder();
      _recipientsPreview = $v.recipientsPreview?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRequestPreview other) {
    _$v = other as _$NotificationRequestPreview;
  }

  @override
  void update(void Function(NotificationRequestPreviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRequestPreview build() => _build();

  _$NotificationRequestPreview _build() {
    _$NotificationRequestPreview _$result;
    try {
      _$result =
          _$v ??
          _$NotificationRequestPreview._(
            processedTemplates: _processedTemplates?.build(),
            totalRecipientsCount: totalRecipientsCount,
            recipientsCountByTarget: _recipientsCountByTarget?.build(),
            recipientsPreview: _recipientsPreview?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'processedTemplates';
        _processedTemplates?.build();

        _$failedField = 'recipientsCountByTarget';
        _recipientsCountByTarget?.build();
        _$failedField = 'recipientsPreview';
        _recipientsPreview?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationRequestPreview',
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
