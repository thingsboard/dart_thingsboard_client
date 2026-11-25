// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class JobConfigurationBuilder {
  void replace(JobConfiguration other);
  void update(void Function(JobConfigurationBuilder) updates);
  String? get tasksKey;
  set tasksKey(String? tasksKey);

  ListBuilder<TaskResult> get toReprocess;
  set toReprocess(ListBuilder<TaskResult>? toReprocess);

  String? get type;
  set type(String? type);
}

class _$$JobConfiguration extends $JobConfiguration {
  @override
  final String tasksKey;
  @override
  final BuiltList<TaskResult>? toReprocess;
  @override
  final String type;

  factory _$$JobConfiguration([
    void Function($JobConfigurationBuilder)? updates,
  ]) => ($JobConfigurationBuilder()..update(updates))._build();

  _$$JobConfiguration._({
    required this.tasksKey,
    this.toReprocess,
    required this.type,
  }) : super._();
  @override
  $JobConfiguration rebuild(void Function($JobConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $JobConfigurationBuilder toBuilder() =>
      $JobConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $JobConfiguration &&
        tasksKey == other.tasksKey &&
        toReprocess == other.toReprocess &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tasksKey.hashCode);
    _$hash = $jc(_$hash, toReprocess.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$JobConfiguration')
          ..add('tasksKey', tasksKey)
          ..add('toReprocess', toReprocess)
          ..add('type', type))
        .toString();
  }
}

class $JobConfigurationBuilder
    implements
        Builder<$JobConfiguration, $JobConfigurationBuilder>,
        JobConfigurationBuilder {
  _$$JobConfiguration? _$v;

  String? _tasksKey;
  String? get tasksKey => _$this._tasksKey;
  set tasksKey(covariant String? tasksKey) => _$this._tasksKey = tasksKey;

  ListBuilder<TaskResult>? _toReprocess;
  ListBuilder<TaskResult> get toReprocess =>
      _$this._toReprocess ??= ListBuilder<TaskResult>();
  set toReprocess(covariant ListBuilder<TaskResult>? toReprocess) =>
      _$this._toReprocess = toReprocess;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $JobConfigurationBuilder() {
    $JobConfiguration._defaults(this);
  }

  $JobConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tasksKey = $v.tasksKey;
      _toReprocess = $v.toReprocess?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $JobConfiguration other) {
    _$v = other as _$$JobConfiguration;
  }

  @override
  void update(void Function($JobConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $JobConfiguration build() => _build();

  _$$JobConfiguration _build() {
    _$$JobConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$$JobConfiguration._(
            tasksKey: BuiltValueNullFieldError.checkNotNull(
              tasksKey,
              r'$JobConfiguration',
              'tasksKey',
            ),
            toReprocess: _toReprocess?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'$JobConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'toReprocess';
        _toReprocess?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'$JobConfiguration',
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
