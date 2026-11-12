// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_export_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceExportData extends ResourceExportData {
  @override
  final String? link;
  @override
  final String? title;
  @override
  final ResourceType? type;
  @override
  final ResourceSubType? subType;
  @override
  final String? resourceKey;
  @override
  final String? fileName;
  @override
  final String? publicResourceKey;
  @override
  final String? mediaType;
  @override
  final String? data;
  @override
  final bool? isPublic;
  @override
  final bool? public;

  factory _$ResourceExportData([
    void Function(ResourceExportDataBuilder)? updates,
  ]) => (ResourceExportDataBuilder()..update(updates))._build();

  _$ResourceExportData._({
    this.link,
    this.title,
    this.type,
    this.subType,
    this.resourceKey,
    this.fileName,
    this.publicResourceKey,
    this.mediaType,
    this.data,
    this.isPublic,
    this.public,
  }) : super._();
  @override
  ResourceExportData rebuild(
    void Function(ResourceExportDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResourceExportDataBuilder toBuilder() =>
      ResourceExportDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceExportData &&
        link == other.link &&
        title == other.title &&
        type == other.type &&
        subType == other.subType &&
        resourceKey == other.resourceKey &&
        fileName == other.fileName &&
        publicResourceKey == other.publicResourceKey &&
        mediaType == other.mediaType &&
        data == other.data &&
        isPublic == other.isPublic &&
        public == other.public;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, resourceKey.hashCode);
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jc(_$hash, publicResourceKey.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourceExportData')
          ..add('link', link)
          ..add('title', title)
          ..add('type', type)
          ..add('subType', subType)
          ..add('resourceKey', resourceKey)
          ..add('fileName', fileName)
          ..add('publicResourceKey', publicResourceKey)
          ..add('mediaType', mediaType)
          ..add('data', data)
          ..add('isPublic', isPublic)
          ..add('public', public))
        .toString();
  }
}

class ResourceExportDataBuilder
    implements Builder<ResourceExportData, ResourceExportDataBuilder> {
  _$ResourceExportData? _$v;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ResourceType? _type;
  ResourceType? get type => _$this._type;
  set type(ResourceType? type) => _$this._type = type;

  ResourceSubType? _subType;
  ResourceSubType? get subType => _$this._subType;
  set subType(ResourceSubType? subType) => _$this._subType = subType;

  String? _resourceKey;
  String? get resourceKey => _$this._resourceKey;
  set resourceKey(String? resourceKey) => _$this._resourceKey = resourceKey;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  String? _publicResourceKey;
  String? get publicResourceKey => _$this._publicResourceKey;
  set publicResourceKey(String? publicResourceKey) =>
      _$this._publicResourceKey = publicResourceKey;

  String? _mediaType;
  String? get mediaType => _$this._mediaType;
  set mediaType(String? mediaType) => _$this._mediaType = mediaType;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  ResourceExportDataBuilder() {
    ResourceExportData._defaults(this);
  }

  ResourceExportDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _link = $v.link;
      _title = $v.title;
      _type = $v.type;
      _subType = $v.subType;
      _resourceKey = $v.resourceKey;
      _fileName = $v.fileName;
      _publicResourceKey = $v.publicResourceKey;
      _mediaType = $v.mediaType;
      _data = $v.data;
      _isPublic = $v.isPublic;
      _public = $v.public;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceExportData other) {
    _$v = other as _$ResourceExportData;
  }

  @override
  void update(void Function(ResourceExportDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceExportData build() => _build();

  _$ResourceExportData _build() {
    final _$result =
        _$v ??
        _$ResourceExportData._(
          link: link,
          title: title,
          type: type,
          subType: subType,
          resourceKey: resourceKey,
          fileName: fileName,
          publicResourceKey: publicResourceKey,
          mediaType: mediaType,
          data: data,
          isPublic: isPublic,
          public: public,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
