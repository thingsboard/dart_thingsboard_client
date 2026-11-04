// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_image_delete_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TbImageDeleteResult extends TbImageDeleteResult {
  @override
  final bool? success;
  @override
  final BuiltList<WhiteLabeling>? whiteLabelingList;
  @override
  final BuiltMap<String, BuiltList<HasIdObject>>? references;

  factory _$TbImageDeleteResult([
    void Function(TbImageDeleteResultBuilder)? updates,
  ]) => (TbImageDeleteResultBuilder()..update(updates))._build();

  _$TbImageDeleteResult._({
    this.success,
    this.whiteLabelingList,
    this.references,
  }) : super._();
  @override
  TbImageDeleteResult rebuild(
    void Function(TbImageDeleteResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TbImageDeleteResultBuilder toBuilder() =>
      TbImageDeleteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TbImageDeleteResult &&
        success == other.success &&
        whiteLabelingList == other.whiteLabelingList &&
        references == other.references;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, whiteLabelingList.hashCode);
    _$hash = $jc(_$hash, references.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TbImageDeleteResult')
          ..add('success', success)
          ..add('whiteLabelingList', whiteLabelingList)
          ..add('references', references))
        .toString();
  }
}

class TbImageDeleteResultBuilder
    implements Builder<TbImageDeleteResult, TbImageDeleteResultBuilder> {
  _$TbImageDeleteResult? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<WhiteLabeling>? _whiteLabelingList;
  ListBuilder<WhiteLabeling> get whiteLabelingList =>
      _$this._whiteLabelingList ??= ListBuilder<WhiteLabeling>();
  set whiteLabelingList(ListBuilder<WhiteLabeling>? whiteLabelingList) =>
      _$this._whiteLabelingList = whiteLabelingList;

  MapBuilder<String, BuiltList<HasIdObject>>? _references;
  MapBuilder<String, BuiltList<HasIdObject>> get references =>
      _$this._references ??= MapBuilder<String, BuiltList<HasIdObject>>();
  set references(MapBuilder<String, BuiltList<HasIdObject>>? references) =>
      _$this._references = references;

  TbImageDeleteResultBuilder() {
    TbImageDeleteResult._defaults(this);
  }

  TbImageDeleteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _whiteLabelingList = $v.whiteLabelingList?.toBuilder();
      _references = $v.references?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TbImageDeleteResult other) {
    _$v = other as _$TbImageDeleteResult;
  }

  @override
  void update(void Function(TbImageDeleteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TbImageDeleteResult build() => _build();

  _$TbImageDeleteResult _build() {
    _$TbImageDeleteResult _$result;
    try {
      _$result =
          _$v ??
          _$TbImageDeleteResult._(
            success: success,
            whiteLabelingList: _whiteLabelingList?.build(),
            references: _references?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'whiteLabelingList';
        _whiteLabelingList?.build();
        _$failedField = 'references';
        _references?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TbImageDeleteResult',
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
