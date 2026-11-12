// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_change_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicenseChangeResult extends LicenseChangeResult {
  @override
  final SystemSetupState? status;
  @override
  final SubscriptionInfo? subscription;

  factory _$LicenseChangeResult([
    void Function(LicenseChangeResultBuilder)? updates,
  ]) => (LicenseChangeResultBuilder()..update(updates))._build();

  _$LicenseChangeResult._({this.status, this.subscription}) : super._();
  @override
  LicenseChangeResult rebuild(
    void Function(LicenseChangeResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LicenseChangeResultBuilder toBuilder() =>
      LicenseChangeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseChangeResult &&
        status == other.status &&
        subscription == other.subscription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, subscription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LicenseChangeResult')
          ..add('status', status)
          ..add('subscription', subscription))
        .toString();
  }
}

class LicenseChangeResultBuilder
    implements Builder<LicenseChangeResult, LicenseChangeResultBuilder> {
  _$LicenseChangeResult? _$v;

  SystemSetupState? _status;
  SystemSetupState? get status => _$this._status;
  set status(SystemSetupState? status) => _$this._status = status;

  SubscriptionInfoBuilder? _subscription;
  SubscriptionInfoBuilder get subscription =>
      _$this._subscription ??= SubscriptionInfoBuilder();
  set subscription(SubscriptionInfoBuilder? subscription) =>
      _$this._subscription = subscription;

  LicenseChangeResultBuilder() {
    LicenseChangeResult._defaults(this);
  }

  LicenseChangeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _subscription = $v.subscription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseChangeResult other) {
    _$v = other as _$LicenseChangeResult;
  }

  @override
  void update(void Function(LicenseChangeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenseChangeResult build() => _build();

  _$LicenseChangeResult _build() {
    _$LicenseChangeResult _$result;
    try {
      _$result =
          _$v ??
          _$LicenseChangeResult._(
            status: status,
            subscription: _subscription?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subscription';
        _subscription?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LicenseChangeResult',
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
