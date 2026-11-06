// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blob_entity_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BlobEntityInfoContentTypeEnum
_$blobEntityInfoContentTypeEnum_applicationSlashPdf =
    const BlobEntityInfoContentTypeEnum._('applicationSlashPdf');
const BlobEntityInfoContentTypeEnum
_$blobEntityInfoContentTypeEnum_imageSlashJpeg =
    const BlobEntityInfoContentTypeEnum._('imageSlashJpeg');
const BlobEntityInfoContentTypeEnum
_$blobEntityInfoContentTypeEnum_imageSlashPng =
    const BlobEntityInfoContentTypeEnum._('imageSlashPng');
const BlobEntityInfoContentTypeEnum
_$blobEntityInfoContentTypeEnum_unknownDefaultOpenApi =
    const BlobEntityInfoContentTypeEnum._('unknownDefaultOpenApi');

BlobEntityInfoContentTypeEnum _$blobEntityInfoContentTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'applicationSlashPdf':
      return _$blobEntityInfoContentTypeEnum_applicationSlashPdf;
    case 'imageSlashJpeg':
      return _$blobEntityInfoContentTypeEnum_imageSlashJpeg;
    case 'imageSlashPng':
      return _$blobEntityInfoContentTypeEnum_imageSlashPng;
    case 'unknownDefaultOpenApi':
      return _$blobEntityInfoContentTypeEnum_unknownDefaultOpenApi;
    default:
      return _$blobEntityInfoContentTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BlobEntityInfoContentTypeEnum>
_$blobEntityInfoContentTypeEnumValues = BuiltSet<BlobEntityInfoContentTypeEnum>(
  const <BlobEntityInfoContentTypeEnum>[
    _$blobEntityInfoContentTypeEnum_applicationSlashPdf,
    _$blobEntityInfoContentTypeEnum_imageSlashJpeg,
    _$blobEntityInfoContentTypeEnum_imageSlashPng,
    _$blobEntityInfoContentTypeEnum_unknownDefaultOpenApi,
  ],
);

Serializer<BlobEntityInfoContentTypeEnum>
_$blobEntityInfoContentTypeEnumSerializer =
    _$BlobEntityInfoContentTypeEnumSerializer();

class _$BlobEntityInfoContentTypeEnumSerializer
    implements PrimitiveSerializer<BlobEntityInfoContentTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'applicationSlashPdf': 'application/pdf',
    'imageSlashJpeg': 'image/jpeg',
    'imageSlashPng': 'image/png',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'application/pdf': 'applicationSlashPdf',
    'image/jpeg': 'imageSlashJpeg',
    'image/png': 'imageSlashPng',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BlobEntityInfoContentTypeEnum];
  @override
  final String wireName = 'BlobEntityInfoContentTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    BlobEntityInfoContentTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BlobEntityInfoContentTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BlobEntityInfoContentTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BlobEntityInfo extends BlobEntityInfo {
  @override
  final BlobEntityId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final BlobEntityInfoContentTypeEnum? contentType;
  @override
  final EntityId? ownerId;

  factory _$BlobEntityInfo([void Function(BlobEntityInfoBuilder)? updates]) =>
      (BlobEntityInfoBuilder()..update(updates))._build();

  _$BlobEntityInfo._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.customerId,
    this.name,
    this.type,
    this.contentType,
    this.ownerId,
  }) : super._();
  @override
  BlobEntityInfo rebuild(void Function(BlobEntityInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlobEntityInfoBuilder toBuilder() => BlobEntityInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlobEntityInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        name == other.name &&
        type == other.type &&
        contentType == other.contentType &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlobEntityInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('type', type)
          ..add('contentType', contentType)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class BlobEntityInfoBuilder
    implements Builder<BlobEntityInfo, BlobEntityInfoBuilder> {
  _$BlobEntityInfo? _$v;

  BlobEntityIdBuilder? _id;
  BlobEntityIdBuilder get id => _$this._id ??= BlobEntityIdBuilder();
  set id(BlobEntityIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  BlobEntityInfoContentTypeEnum? _contentType;
  BlobEntityInfoContentTypeEnum? get contentType => _$this._contentType;
  set contentType(BlobEntityInfoContentTypeEnum? contentType) =>
      _$this._contentType = contentType;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  BlobEntityInfoBuilder() {
    BlobEntityInfo._defaults(this);
  }

  BlobEntityInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _name = $v.name;
      _type = $v.type;
      _contentType = $v.contentType;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlobEntityInfo other) {
    _$v = other as _$BlobEntityInfo;
  }

  @override
  void update(void Function(BlobEntityInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlobEntityInfo build() => _build();

  _$BlobEntityInfo _build() {
    _$BlobEntityInfo _$result;
    try {
      _$result =
          _$v ??
          _$BlobEntityInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: name,
            type: type,
            contentType: contentType,
            ownerId: ownerId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'customerId';
        _customerId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BlobEntityInfo',
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
