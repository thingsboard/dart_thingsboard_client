// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blob_entity_with_customer_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BlobEntityWithCustomerInfoContentTypeEnum
_$blobEntityWithCustomerInfoContentTypeEnum_applicationSlashPdf =
    const BlobEntityWithCustomerInfoContentTypeEnum._('applicationSlashPdf');
const BlobEntityWithCustomerInfoContentTypeEnum
_$blobEntityWithCustomerInfoContentTypeEnum_imageSlashJpeg =
    const BlobEntityWithCustomerInfoContentTypeEnum._('imageSlashJpeg');
const BlobEntityWithCustomerInfoContentTypeEnum
_$blobEntityWithCustomerInfoContentTypeEnum_imageSlashPng =
    const BlobEntityWithCustomerInfoContentTypeEnum._('imageSlashPng');
const BlobEntityWithCustomerInfoContentTypeEnum
_$blobEntityWithCustomerInfoContentTypeEnum_unknownDefaultOpenApi =
    const BlobEntityWithCustomerInfoContentTypeEnum._('unknownDefaultOpenApi');

BlobEntityWithCustomerInfoContentTypeEnum
_$blobEntityWithCustomerInfoContentTypeEnumValueOf(String name) {
  switch (name) {
    case 'applicationSlashPdf':
      return _$blobEntityWithCustomerInfoContentTypeEnum_applicationSlashPdf;
    case 'imageSlashJpeg':
      return _$blobEntityWithCustomerInfoContentTypeEnum_imageSlashJpeg;
    case 'imageSlashPng':
      return _$blobEntityWithCustomerInfoContentTypeEnum_imageSlashPng;
    case 'unknownDefaultOpenApi':
      return _$blobEntityWithCustomerInfoContentTypeEnum_unknownDefaultOpenApi;
    default:
      return _$blobEntityWithCustomerInfoContentTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BlobEntityWithCustomerInfoContentTypeEnum>
_$blobEntityWithCustomerInfoContentTypeEnumValues =
    BuiltSet<BlobEntityWithCustomerInfoContentTypeEnum>(
      const <BlobEntityWithCustomerInfoContentTypeEnum>[
        _$blobEntityWithCustomerInfoContentTypeEnum_applicationSlashPdf,
        _$blobEntityWithCustomerInfoContentTypeEnum_imageSlashJpeg,
        _$blobEntityWithCustomerInfoContentTypeEnum_imageSlashPng,
        _$blobEntityWithCustomerInfoContentTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<BlobEntityWithCustomerInfoContentTypeEnum>
_$blobEntityWithCustomerInfoContentTypeEnumSerializer =
    _$BlobEntityWithCustomerInfoContentTypeEnumSerializer();

class _$BlobEntityWithCustomerInfoContentTypeEnumSerializer
    implements PrimitiveSerializer<BlobEntityWithCustomerInfoContentTypeEnum> {
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
  final Iterable<Type> types = const <Type>[
    BlobEntityWithCustomerInfoContentTypeEnum,
  ];
  @override
  final String wireName = 'BlobEntityWithCustomerInfoContentTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    BlobEntityWithCustomerInfoContentTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BlobEntityWithCustomerInfoContentTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BlobEntityWithCustomerInfoContentTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BlobEntityWithCustomerInfo extends BlobEntityWithCustomerInfo {
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
  final BlobEntityWithCustomerInfoContentTypeEnum? contentType;
  @override
  final String? customerTitle;
  @override
  final bool? customerIsPublic;
  @override
  final EntityId? ownerId;

  factory _$BlobEntityWithCustomerInfo([
    void Function(BlobEntityWithCustomerInfoBuilder)? updates,
  ]) => (BlobEntityWithCustomerInfoBuilder()..update(updates))._build();

  _$BlobEntityWithCustomerInfo._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.customerId,
    this.name,
    this.type,
    this.contentType,
    this.customerTitle,
    this.customerIsPublic,
    this.ownerId,
  }) : super._();
  @override
  BlobEntityWithCustomerInfo rebuild(
    void Function(BlobEntityWithCustomerInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BlobEntityWithCustomerInfoBuilder toBuilder() =>
      BlobEntityWithCustomerInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlobEntityWithCustomerInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        name == other.name &&
        type == other.type &&
        contentType == other.contentType &&
        customerTitle == other.customerTitle &&
        customerIsPublic == other.customerIsPublic &&
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
    _$hash = $jc(_$hash, customerTitle.hashCode);
    _$hash = $jc(_$hash, customerIsPublic.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlobEntityWithCustomerInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('type', type)
          ..add('contentType', contentType)
          ..add('customerTitle', customerTitle)
          ..add('customerIsPublic', customerIsPublic)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class BlobEntityWithCustomerInfoBuilder
    implements
        Builder<BlobEntityWithCustomerInfo, BlobEntityWithCustomerInfoBuilder> {
  _$BlobEntityWithCustomerInfo? _$v;

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

  BlobEntityWithCustomerInfoContentTypeEnum? _contentType;
  BlobEntityWithCustomerInfoContentTypeEnum? get contentType =>
      _$this._contentType;
  set contentType(BlobEntityWithCustomerInfoContentTypeEnum? contentType) =>
      _$this._contentType = contentType;

  String? _customerTitle;
  String? get customerTitle => _$this._customerTitle;
  set customerTitle(String? customerTitle) =>
      _$this._customerTitle = customerTitle;

  bool? _customerIsPublic;
  bool? get customerIsPublic => _$this._customerIsPublic;
  set customerIsPublic(bool? customerIsPublic) =>
      _$this._customerIsPublic = customerIsPublic;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  BlobEntityWithCustomerInfoBuilder() {
    BlobEntityWithCustomerInfo._defaults(this);
  }

  BlobEntityWithCustomerInfoBuilder get _$this {
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
      _customerTitle = $v.customerTitle;
      _customerIsPublic = $v.customerIsPublic;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlobEntityWithCustomerInfo other) {
    _$v = other as _$BlobEntityWithCustomerInfo;
  }

  @override
  void update(void Function(BlobEntityWithCustomerInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlobEntityWithCustomerInfo build() => _build();

  _$BlobEntityWithCustomerInfo _build() {
    _$BlobEntityWithCustomerInfo _$result;
    try {
      _$result =
          _$v ??
          _$BlobEntityWithCustomerInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: name,
            type: type,
            contentType: contentType,
            customerTitle: customerTitle,
            customerIsPublic: customerIsPublic,
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
          r'BlobEntityWithCustomerInfo',
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
