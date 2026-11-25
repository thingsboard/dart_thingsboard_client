// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_sms_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestSmsRequest extends TestSmsRequest {
  @override
  final SmsProviderConfiguration? providerConfiguration;
  @override
  final String? numberTo;
  @override
  final String? message;

  factory _$TestSmsRequest([void Function(TestSmsRequestBuilder)? updates]) =>
      (TestSmsRequestBuilder()..update(updates))._build();

  _$TestSmsRequest._({this.providerConfiguration, this.numberTo, this.message})
    : super._();
  @override
  TestSmsRequest rebuild(void Function(TestSmsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestSmsRequestBuilder toBuilder() => TestSmsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestSmsRequest &&
        providerConfiguration == other.providerConfiguration &&
        numberTo == other.numberTo &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, providerConfiguration.hashCode);
    _$hash = $jc(_$hash, numberTo.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestSmsRequest')
          ..add('providerConfiguration', providerConfiguration)
          ..add('numberTo', numberTo)
          ..add('message', message))
        .toString();
  }
}

class TestSmsRequestBuilder
    implements Builder<TestSmsRequest, TestSmsRequestBuilder> {
  _$TestSmsRequest? _$v;

  SmsProviderConfiguration? _providerConfiguration;
  SmsProviderConfiguration? get providerConfiguration =>
      _$this._providerConfiguration;
  set providerConfiguration(SmsProviderConfiguration? providerConfiguration) =>
      _$this._providerConfiguration = providerConfiguration;

  String? _numberTo;
  String? get numberTo => _$this._numberTo;
  set numberTo(String? numberTo) => _$this._numberTo = numberTo;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TestSmsRequestBuilder() {
    TestSmsRequest._defaults(this);
  }

  TestSmsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _providerConfiguration = $v.providerConfiguration;
      _numberTo = $v.numberTo;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestSmsRequest other) {
    _$v = other as _$TestSmsRequest;
  }

  @override
  void update(void Function(TestSmsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestSmsRequest build() => _build();

  _$TestSmsRequest _build() {
    final _$result =
        _$v ??
        _$TestSmsRequest._(
          providerConfiguration: providerConfiguration,
          numberTo: numberTo,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
