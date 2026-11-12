// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_vertex_ai_gemini_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GoogleVertexAiGeminiProviderConfig
    extends GoogleVertexAiGeminiProviderConfig {
  @override
  final String? fileName;
  @override
  final String projectId;
  @override
  final String location;
  @override
  final String serviceAccountKey;

  factory _$GoogleVertexAiGeminiProviderConfig([
    void Function(GoogleVertexAiGeminiProviderConfigBuilder)? updates,
  ]) => (GoogleVertexAiGeminiProviderConfigBuilder()..update(updates))._build();

  _$GoogleVertexAiGeminiProviderConfig._({
    this.fileName,
    required this.projectId,
    required this.location,
    required this.serviceAccountKey,
  }) : super._();
  @override
  GoogleVertexAiGeminiProviderConfig rebuild(
    void Function(GoogleVertexAiGeminiProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GoogleVertexAiGeminiProviderConfigBuilder toBuilder() =>
      GoogleVertexAiGeminiProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleVertexAiGeminiProviderConfig &&
        fileName == other.fileName &&
        projectId == other.projectId &&
        location == other.location &&
        serviceAccountKey == other.serviceAccountKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, serviceAccountKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoogleVertexAiGeminiProviderConfig')
          ..add('fileName', fileName)
          ..add('projectId', projectId)
          ..add('location', location)
          ..add('serviceAccountKey', serviceAccountKey))
        .toString();
  }
}

class GoogleVertexAiGeminiProviderConfigBuilder
    implements
        Builder<
          GoogleVertexAiGeminiProviderConfig,
          GoogleVertexAiGeminiProviderConfigBuilder
        > {
  _$GoogleVertexAiGeminiProviderConfig? _$v;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _serviceAccountKey;
  String? get serviceAccountKey => _$this._serviceAccountKey;
  set serviceAccountKey(String? serviceAccountKey) =>
      _$this._serviceAccountKey = serviceAccountKey;

  GoogleVertexAiGeminiProviderConfigBuilder() {
    GoogleVertexAiGeminiProviderConfig._defaults(this);
  }

  GoogleVertexAiGeminiProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fileName = $v.fileName;
      _projectId = $v.projectId;
      _location = $v.location;
      _serviceAccountKey = $v.serviceAccountKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleVertexAiGeminiProviderConfig other) {
    _$v = other as _$GoogleVertexAiGeminiProviderConfig;
  }

  @override
  void update(
    void Function(GoogleVertexAiGeminiProviderConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GoogleVertexAiGeminiProviderConfig build() => _build();

  _$GoogleVertexAiGeminiProviderConfig _build() {
    final _$result =
        _$v ??
        _$GoogleVertexAiGeminiProviderConfig._(
          fileName: fileName,
          projectId: BuiltValueNullFieldError.checkNotNull(
            projectId,
            r'GoogleVertexAiGeminiProviderConfig',
            'projectId',
          ),
          location: BuiltValueNullFieldError.checkNotNull(
            location,
            r'GoogleVertexAiGeminiProviderConfig',
            'location',
          ),
          serviceAccountKey: BuiltValueNullFieldError.checkNotNull(
            serviceAccountKey,
            r'GoogleVertexAiGeminiProviderConfig',
            'serviceAccountKey',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
