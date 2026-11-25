// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ota_package_info_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SaveOtaPackageInfoRequest extends SaveOtaPackageInfoRequest {
  @override
  final OtaPackageId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final DeviceProfileId? deviceProfileId;
  @override
  final OtaPackageType? type;
  @override
  final String? title;
  @override
  final String? version;
  @override
  final String? tag;
  @override
  final String? url;
  @override
  final bool? hasData;
  @override
  final String? fileName;
  @override
  final String? contentType;
  @override
  final ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? checksum;
  @override
  final int? dataSize;
  @override
  final bool? usesUrl;
  @override
  final String? name;

  factory _$SaveOtaPackageInfoRequest([
    void Function(SaveOtaPackageInfoRequestBuilder)? updates,
  ]) => (SaveOtaPackageInfoRequestBuilder()..update(updates))._build();

  _$SaveOtaPackageInfoRequest._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.deviceProfileId,
    this.type,
    this.title,
    this.version,
    this.tag,
    this.url,
    this.hasData,
    this.fileName,
    this.contentType,
    this.checksumAlgorithm,
    this.checksum,
    this.dataSize,
    this.usesUrl,
    this.name,
  }) : super._();
  @override
  SaveOtaPackageInfoRequest rebuild(
    void Function(SaveOtaPackageInfoRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SaveOtaPackageInfoRequestBuilder toBuilder() =>
      SaveOtaPackageInfoRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SaveOtaPackageInfoRequest &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        deviceProfileId == other.deviceProfileId &&
        type == other.type &&
        title == other.title &&
        version == other.version &&
        tag == other.tag &&
        url == other.url &&
        hasData == other.hasData &&
        fileName == other.fileName &&
        contentType == other.contentType &&
        checksumAlgorithm == other.checksumAlgorithm &&
        checksum == other.checksum &&
        dataSize == other.dataSize &&
        usesUrl == other.usesUrl &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, deviceProfileId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, hasData.hashCode);
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, dataSize.hashCode);
    _$hash = $jc(_$hash, usesUrl.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SaveOtaPackageInfoRequest')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('deviceProfileId', deviceProfileId)
          ..add('type', type)
          ..add('title', title)
          ..add('version', version)
          ..add('tag', tag)
          ..add('url', url)
          ..add('hasData', hasData)
          ..add('fileName', fileName)
          ..add('contentType', contentType)
          ..add('checksumAlgorithm', checksumAlgorithm)
          ..add('checksum', checksum)
          ..add('dataSize', dataSize)
          ..add('usesUrl', usesUrl)
          ..add('name', name))
        .toString();
  }
}

class SaveOtaPackageInfoRequestBuilder
    implements
        Builder<SaveOtaPackageInfoRequest, SaveOtaPackageInfoRequestBuilder> {
  _$SaveOtaPackageInfoRequest? _$v;

  OtaPackageIdBuilder? _id;
  OtaPackageIdBuilder get id => _$this._id ??= OtaPackageIdBuilder();
  set id(OtaPackageIdBuilder? id) => _$this._id = id;

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

  DeviceProfileIdBuilder? _deviceProfileId;
  DeviceProfileIdBuilder get deviceProfileId =>
      _$this._deviceProfileId ??= DeviceProfileIdBuilder();
  set deviceProfileId(DeviceProfileIdBuilder? deviceProfileId) =>
      _$this._deviceProfileId = deviceProfileId;

  OtaPackageType? _type;
  OtaPackageType? get type => _$this._type;
  set type(OtaPackageType? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  bool? _hasData;
  bool? get hasData => _$this._hasData;
  set hasData(bool? hasData) => _$this._hasData = hasData;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  int? _dataSize;
  int? get dataSize => _$this._dataSize;
  set dataSize(int? dataSize) => _$this._dataSize = dataSize;

  bool? _usesUrl;
  bool? get usesUrl => _$this._usesUrl;
  set usesUrl(bool? usesUrl) => _$this._usesUrl = usesUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SaveOtaPackageInfoRequestBuilder() {
    SaveOtaPackageInfoRequest._defaults(this);
  }

  SaveOtaPackageInfoRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _tenantId = $v.tenantId?.toBuilder();
      _deviceProfileId = $v.deviceProfileId?.toBuilder();
      _type = $v.type;
      _title = $v.title;
      _version = $v.version;
      _tag = $v.tag;
      _url = $v.url;
      _hasData = $v.hasData;
      _fileName = $v.fileName;
      _contentType = $v.contentType;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _checksum = $v.checksum;
      _dataSize = $v.dataSize;
      _usesUrl = $v.usesUrl;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SaveOtaPackageInfoRequest other) {
    _$v = other as _$SaveOtaPackageInfoRequest;
  }

  @override
  void update(void Function(SaveOtaPackageInfoRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SaveOtaPackageInfoRequest build() => _build();

  _$SaveOtaPackageInfoRequest _build() {
    _$SaveOtaPackageInfoRequest _$result;
    try {
      _$result =
          _$v ??
          _$SaveOtaPackageInfoRequest._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            deviceProfileId: _deviceProfileId?.build(),
            type: type,
            title: title,
            version: version,
            tag: tag,
            url: url,
            hasData: hasData,
            fileName: fileName,
            contentType: contentType,
            checksumAlgorithm: checksumAlgorithm,
            checksum: checksum,
            dataSize: dataSize,
            usesUrl: usesUrl,
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'deviceProfileId';
        _deviceProfileId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SaveOtaPackageInfoRequest',
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
