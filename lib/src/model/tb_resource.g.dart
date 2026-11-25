// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TbResource extends TbResource {
  @override
  final TbResourceId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String? title;
  @override
  final ResourceType? resourceType;
  @override
  final ResourceSubType? resourceSubType;
  @override
  final String? resourceKey;
  @override
  final String? publicResourceKey;
  @override
  final String? etag;
  @override
  final String? fileName;
  @override
  final JsonObject? descriptor;
  @override
  final String? data;
  @override
  final String? preview;
  @override
  final String? link;
  @override
  final String? name;
  @override
  final bool? public;
  @override
  final String? publicLink;

  factory _$TbResource([void Function(TbResourceBuilder)? updates]) =>
      (TbResourceBuilder()..update(updates))._build();

  _$TbResource._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.customerId,
    this.title,
    this.resourceType,
    this.resourceSubType,
    this.resourceKey,
    this.publicResourceKey,
    this.etag,
    this.fileName,
    this.descriptor,
    this.data,
    this.preview,
    this.link,
    this.name,
    this.public,
    this.publicLink,
  }) : super._();
  @override
  TbResource rebuild(void Function(TbResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TbResourceBuilder toBuilder() => TbResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TbResource &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        title == other.title &&
        resourceType == other.resourceType &&
        resourceSubType == other.resourceSubType &&
        resourceKey == other.resourceKey &&
        publicResourceKey == other.publicResourceKey &&
        etag == other.etag &&
        fileName == other.fileName &&
        descriptor == other.descriptor &&
        data == other.data &&
        preview == other.preview &&
        link == other.link &&
        name == other.name &&
        public == other.public &&
        publicLink == other.publicLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceSubType.hashCode);
    _$hash = $jc(_$hash, resourceKey.hashCode);
    _$hash = $jc(_$hash, publicResourceKey.hashCode);
    _$hash = $jc(_$hash, etag.hashCode);
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jc(_$hash, descriptor.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, preview.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jc(_$hash, publicLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TbResource')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('title', title)
          ..add('resourceType', resourceType)
          ..add('resourceSubType', resourceSubType)
          ..add('resourceKey', resourceKey)
          ..add('publicResourceKey', publicResourceKey)
          ..add('etag', etag)
          ..add('fileName', fileName)
          ..add('descriptor', descriptor)
          ..add('data', data)
          ..add('preview', preview)
          ..add('link', link)
          ..add('name', name)
          ..add('public', public)
          ..add('publicLink', publicLink))
        .toString();
  }
}

class TbResourceBuilder implements Builder<TbResource, TbResourceBuilder> {
  _$TbResource? _$v;

  TbResourceIdBuilder? _id;
  TbResourceIdBuilder get id => _$this._id ??= TbResourceIdBuilder();
  set id(TbResourceIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ResourceType? _resourceType;
  ResourceType? get resourceType => _$this._resourceType;
  set resourceType(ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  ResourceSubType? _resourceSubType;
  ResourceSubType? get resourceSubType => _$this._resourceSubType;
  set resourceSubType(ResourceSubType? resourceSubType) =>
      _$this._resourceSubType = resourceSubType;

  String? _resourceKey;
  String? get resourceKey => _$this._resourceKey;
  set resourceKey(String? resourceKey) => _$this._resourceKey = resourceKey;

  String? _publicResourceKey;
  String? get publicResourceKey => _$this._publicResourceKey;
  set publicResourceKey(String? publicResourceKey) =>
      _$this._publicResourceKey = publicResourceKey;

  String? _etag;
  String? get etag => _$this._etag;
  set etag(String? etag) => _$this._etag = etag;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  JsonObject? _descriptor;
  JsonObject? get descriptor => _$this._descriptor;
  set descriptor(JsonObject? descriptor) => _$this._descriptor = descriptor;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  String? _preview;
  String? get preview => _$this._preview;
  set preview(String? preview) => _$this._preview = preview;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  String? _publicLink;
  String? get publicLink => _$this._publicLink;
  set publicLink(String? publicLink) => _$this._publicLink = publicLink;

  TbResourceBuilder() {
    TbResource._defaults(this);
  }

  TbResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _title = $v.title;
      _resourceType = $v.resourceType;
      _resourceSubType = $v.resourceSubType;
      _resourceKey = $v.resourceKey;
      _publicResourceKey = $v.publicResourceKey;
      _etag = $v.etag;
      _fileName = $v.fileName;
      _descriptor = $v.descriptor;
      _data = $v.data;
      _preview = $v.preview;
      _link = $v.link;
      _name = $v.name;
      _public = $v.public;
      _publicLink = $v.publicLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TbResource other) {
    _$v = other as _$TbResource;
  }

  @override
  void update(void Function(TbResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TbResource build() => _build();

  _$TbResource _build() {
    _$TbResource _$result;
    try {
      _$result =
          _$v ??
          _$TbResource._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            title: title,
            resourceType: resourceType,
            resourceSubType: resourceSubType,
            resourceKey: resourceKey,
            publicResourceKey: publicResourceKey,
            etag: etag,
            fileName: fileName,
            descriptor: descriptor,
            data: data,
            preview: preview,
            link: link,
            name: name,
            public: public,
            publicLink: publicLink,
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
          r'TbResource',
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
