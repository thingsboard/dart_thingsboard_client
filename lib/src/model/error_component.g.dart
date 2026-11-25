// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorComponent extends ErrorComponent {
  @override
  final ErrorComponentAllOfException? exception;
  @override
  final String? errorMessage;
  @override
  final ReportComponentSubType? subType;
  @override
  final ReportComponentType type;

  factory _$ErrorComponent([void Function(ErrorComponentBuilder)? updates]) =>
      (ErrorComponentBuilder()..update(updates))._build();

  _$ErrorComponent._({
    this.exception,
    this.errorMessage,
    this.subType,
    required this.type,
  }) : super._();
  @override
  ErrorComponent rebuild(void Function(ErrorComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorComponentBuilder toBuilder() => ErrorComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorComponent &&
        exception == other.exception &&
        errorMessage == other.errorMessage &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exception.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorComponent')
          ..add('exception', exception)
          ..add('errorMessage', errorMessage)
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class ErrorComponentBuilder
    implements
        Builder<ErrorComponent, ErrorComponentBuilder>,
        ReportComponentBuilder {
  _$ErrorComponent? _$v;

  ErrorComponentAllOfExceptionBuilder? _exception;
  ErrorComponentAllOfExceptionBuilder get exception =>
      _$this._exception ??= ErrorComponentAllOfExceptionBuilder();
  set exception(covariant ErrorComponentAllOfExceptionBuilder? exception) =>
      _$this._exception = exception;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(covariant String? errorMessage) =>
      _$this._errorMessage = errorMessage;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  ErrorComponentBuilder() {
    ErrorComponent._defaults(this);
  }

  ErrorComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exception = $v.exception?.toBuilder();
      _errorMessage = $v.errorMessage;
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ErrorComponent other) {
    _$v = other as _$ErrorComponent;
  }

  @override
  void update(void Function(ErrorComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorComponent build() => _build();

  _$ErrorComponent _build() {
    _$ErrorComponent _$result;
    try {
      _$result =
          _$v ??
          _$ErrorComponent._(
            exception: _exception?.build(),
            errorMessage: errorMessage,
            subType: subType,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ErrorComponent',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exception';
        _exception?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ErrorComponent',
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
