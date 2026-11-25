// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_chat_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class TbChatResponseBuilder {
  void replace(TbChatResponse other);
  void update(void Function(TbChatResponseBuilder) updates);
  String? get status;
  set status(String? status);
}

class _$$TbChatResponse extends $TbChatResponse {
  @override
  final String status;

  factory _$$TbChatResponse([void Function($TbChatResponseBuilder)? updates]) =>
      ($TbChatResponseBuilder()..update(updates))._build();

  _$$TbChatResponse._({required this.status}) : super._();
  @override
  $TbChatResponse rebuild(void Function($TbChatResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TbChatResponseBuilder toBuilder() => $TbChatResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TbChatResponse && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$TbChatResponse',
    )..add('status', status)).toString();
  }
}

class $TbChatResponseBuilder
    implements
        Builder<$TbChatResponse, $TbChatResponseBuilder>,
        TbChatResponseBuilder {
  _$$TbChatResponse? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(covariant String? status) => _$this._status = status;

  $TbChatResponseBuilder() {
    $TbChatResponse._defaults(this);
  }

  $TbChatResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TbChatResponse other) {
    _$v = other as _$$TbChatResponse;
  }

  @override
  void update(void Function($TbChatResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TbChatResponse build() => _build();

  _$$TbChatResponse _build() {
    final _$result =
        _$v ??
        _$$TbChatResponse._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'$TbChatResponse',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
