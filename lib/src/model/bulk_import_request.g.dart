// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_import_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkImportRequest extends BulkImportRequest {
  @override
  final String? file;
  @override
  final Mapping? mapping;
  @override
  final CustomerId? customerId;
  @override
  final String? entityGroupId;

  factory _$BulkImportRequest([
    void Function(BulkImportRequestBuilder)? updates,
  ]) => (BulkImportRequestBuilder()..update(updates))._build();

  _$BulkImportRequest._({
    this.file,
    this.mapping,
    this.customerId,
    this.entityGroupId,
  }) : super._();
  @override
  BulkImportRequest rebuild(void Function(BulkImportRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BulkImportRequestBuilder toBuilder() =>
      BulkImportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkImportRequest &&
        file == other.file &&
        mapping == other.mapping &&
        customerId == other.customerId &&
        entityGroupId == other.entityGroupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, mapping.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, entityGroupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkImportRequest')
          ..add('file', file)
          ..add('mapping', mapping)
          ..add('customerId', customerId)
          ..add('entityGroupId', entityGroupId))
        .toString();
  }
}

class BulkImportRequestBuilder
    implements Builder<BulkImportRequest, BulkImportRequestBuilder> {
  _$BulkImportRequest? _$v;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  MappingBuilder? _mapping;
  MappingBuilder get mapping => _$this._mapping ??= MappingBuilder();
  set mapping(MappingBuilder? mapping) => _$this._mapping = mapping;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _entityGroupId;
  String? get entityGroupId => _$this._entityGroupId;
  set entityGroupId(String? entityGroupId) =>
      _$this._entityGroupId = entityGroupId;

  BulkImportRequestBuilder() {
    BulkImportRequest._defaults(this);
  }

  BulkImportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _file = $v.file;
      _mapping = $v.mapping?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _entityGroupId = $v.entityGroupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkImportRequest other) {
    _$v = other as _$BulkImportRequest;
  }

  @override
  void update(void Function(BulkImportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkImportRequest build() => _build();

  _$BulkImportRequest _build() {
    _$BulkImportRequest _$result;
    try {
      _$result =
          _$v ??
          _$BulkImportRequest._(
            file: file,
            mapping: _mapping?.build(),
            customerId: _customerId?.build(),
            entityGroupId: entityGroupId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapping';
        _mapping?.build();
        _$failedField = 'customerId';
        _customerId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BulkImportRequest',
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
