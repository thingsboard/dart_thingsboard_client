// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Success extends Success {
  @override
  final String? generatedContent;
  @override
  final String status;

  factory _$Success([void Function(SuccessBuilder)? updates]) =>
      (SuccessBuilder()..update(updates))._build();

  _$Success._({this.generatedContent, required this.status}) : super._();
  @override
  Success rebuild(void Function(SuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessBuilder toBuilder() => SuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Success &&
        generatedContent == other.generatedContent &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, generatedContent.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Success')
          ..add('generatedContent', generatedContent)
          ..add('status', status))
        .toString();
  }
}

class SuccessBuilder
    implements Builder<Success, SuccessBuilder>, TbChatResponseBuilder {
  _$Success? _$v;

  String? _generatedContent;
  String? get generatedContent => _$this._generatedContent;
  set generatedContent(covariant String? generatedContent) =>
      _$this._generatedContent = generatedContent;

  String? _status;
  String? get status => _$this._status;
  set status(covariant String? status) => _$this._status = status;

  SuccessBuilder() {
    Success._defaults(this);
  }

  SuccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generatedContent = $v.generatedContent;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Success other) {
    _$v = other as _$Success;
  }

  @override
  void update(void Function(SuccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Success build() => _build();

  _$Success _build() {
    final _$result =
        _$v ??
        _$Success._(
          generatedContent: generatedContent,
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'Success',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
