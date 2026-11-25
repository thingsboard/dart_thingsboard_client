// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solution_export_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SolutionExportRequest extends SolutionExportRequest {
  @override
  final BuiltSet<EntityId>? internalIds;
  @override
  final BuiltSet<EntityId>? externalIds;
  @override
  final EntityExportSettings? settings;

  factory _$SolutionExportRequest([
    void Function(SolutionExportRequestBuilder)? updates,
  ]) => (SolutionExportRequestBuilder()..update(updates))._build();

  _$SolutionExportRequest._({this.internalIds, this.externalIds, this.settings})
    : super._();
  @override
  SolutionExportRequest rebuild(
    void Function(SolutionExportRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SolutionExportRequestBuilder toBuilder() =>
      SolutionExportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SolutionExportRequest &&
        internalIds == other.internalIds &&
        externalIds == other.externalIds &&
        settings == other.settings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, internalIds.hashCode);
    _$hash = $jc(_$hash, externalIds.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SolutionExportRequest')
          ..add('internalIds', internalIds)
          ..add('externalIds', externalIds)
          ..add('settings', settings))
        .toString();
  }
}

class SolutionExportRequestBuilder
    implements Builder<SolutionExportRequest, SolutionExportRequestBuilder> {
  _$SolutionExportRequest? _$v;

  SetBuilder<EntityId>? _internalIds;
  SetBuilder<EntityId> get internalIds =>
      _$this._internalIds ??= SetBuilder<EntityId>();
  set internalIds(SetBuilder<EntityId>? internalIds) =>
      _$this._internalIds = internalIds;

  SetBuilder<EntityId>? _externalIds;
  SetBuilder<EntityId> get externalIds =>
      _$this._externalIds ??= SetBuilder<EntityId>();
  set externalIds(SetBuilder<EntityId>? externalIds) =>
      _$this._externalIds = externalIds;

  EntityExportSettingsBuilder? _settings;
  EntityExportSettingsBuilder get settings =>
      _$this._settings ??= EntityExportSettingsBuilder();
  set settings(EntityExportSettingsBuilder? settings) =>
      _$this._settings = settings;

  SolutionExportRequestBuilder() {
    SolutionExportRequest._defaults(this);
  }

  SolutionExportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _internalIds = $v.internalIds?.toBuilder();
      _externalIds = $v.externalIds?.toBuilder();
      _settings = $v.settings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SolutionExportRequest other) {
    _$v = other as _$SolutionExportRequest;
  }

  @override
  void update(void Function(SolutionExportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SolutionExportRequest build() => _build();

  _$SolutionExportRequest _build() {
    _$SolutionExportRequest _$result;
    try {
      _$result =
          _$v ??
          _$SolutionExportRequest._(
            internalIds: _internalIds?.build(),
            externalIds: _externalIds?.build(),
            settings: _settings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'internalIds';
        _internalIds?.build();
        _$failedField = 'externalIds';
        _externalIds?.build();
        _$failedField = 'settings';
        _settings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SolutionExportRequest',
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
