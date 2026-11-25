// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_menu_delete_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomMenuDeleteResult extends CustomMenuDeleteResult {
  @override
  final bool? success;
  @override
  final CMAssigneeType? assigneeType;
  @override
  final BuiltList<EntityInfo>? assigneeList;

  factory _$CustomMenuDeleteResult([
    void Function(CustomMenuDeleteResultBuilder)? updates,
  ]) => (CustomMenuDeleteResultBuilder()..update(updates))._build();

  _$CustomMenuDeleteResult._({
    this.success,
    this.assigneeType,
    this.assigneeList,
  }) : super._();
  @override
  CustomMenuDeleteResult rebuild(
    void Function(CustomMenuDeleteResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomMenuDeleteResultBuilder toBuilder() =>
      CustomMenuDeleteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomMenuDeleteResult &&
        success == other.success &&
        assigneeType == other.assigneeType &&
        assigneeList == other.assigneeList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, assigneeType.hashCode);
    _$hash = $jc(_$hash, assigneeList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomMenuDeleteResult')
          ..add('success', success)
          ..add('assigneeType', assigneeType)
          ..add('assigneeList', assigneeList))
        .toString();
  }
}

class CustomMenuDeleteResultBuilder
    implements Builder<CustomMenuDeleteResult, CustomMenuDeleteResultBuilder> {
  _$CustomMenuDeleteResult? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  CMAssigneeType? _assigneeType;
  CMAssigneeType? get assigneeType => _$this._assigneeType;
  set assigneeType(CMAssigneeType? assigneeType) =>
      _$this._assigneeType = assigneeType;

  ListBuilder<EntityInfo>? _assigneeList;
  ListBuilder<EntityInfo> get assigneeList =>
      _$this._assigneeList ??= ListBuilder<EntityInfo>();
  set assigneeList(ListBuilder<EntityInfo>? assigneeList) =>
      _$this._assigneeList = assigneeList;

  CustomMenuDeleteResultBuilder() {
    CustomMenuDeleteResult._defaults(this);
  }

  CustomMenuDeleteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _assigneeType = $v.assigneeType;
      _assigneeList = $v.assigneeList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomMenuDeleteResult other) {
    _$v = other as _$CustomMenuDeleteResult;
  }

  @override
  void update(void Function(CustomMenuDeleteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomMenuDeleteResult build() => _build();

  _$CustomMenuDeleteResult _build() {
    _$CustomMenuDeleteResult _$result;
    try {
      _$result =
          _$v ??
          _$CustomMenuDeleteResult._(
            success: success,
            assigneeType: assigneeType,
            assigneeList: _assigneeList?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assigneeList';
        _assigneeList?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CustomMenuDeleteResult',
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
