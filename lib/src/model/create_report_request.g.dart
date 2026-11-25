// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_report_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReportRequest extends CreateReportRequest {
  @override
  final Uint8List file;
  @override
  final String info;

  factory _$CreateReportRequest([
    void Function(CreateReportRequestBuilder)? updates,
  ]) => (CreateReportRequestBuilder()..update(updates))._build();

  _$CreateReportRequest._({required this.file, required this.info}) : super._();
  @override
  CreateReportRequest rebuild(
    void Function(CreateReportRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateReportRequestBuilder toBuilder() =>
      CreateReportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReportRequest &&
        file == other.file &&
        info == other.info;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateReportRequest')
          ..add('file', file)
          ..add('info', info))
        .toString();
  }
}

class CreateReportRequestBuilder
    implements Builder<CreateReportRequest, CreateReportRequestBuilder> {
  _$CreateReportRequest? _$v;

  Uint8List? _file;
  Uint8List? get file => _$this._file;
  set file(Uint8List? file) => _$this._file = file;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  CreateReportRequestBuilder() {
    CreateReportRequest._defaults(this);
  }

  CreateReportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _file = $v.file;
      _info = $v.info;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateReportRequest other) {
    _$v = other as _$CreateReportRequest;
  }

  @override
  void update(void Function(CreateReportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReportRequest build() => _build();

  _$CreateReportRequest _build() {
    final _$result =
        _$v ??
        _$CreateReportRequest._(
          file: BuiltValueNullFieldError.checkNotNull(
            file,
            r'CreateReportRequest',
            'file',
          ),
          info: BuiltValueNullFieldError.checkNotNull(
            info,
            r'CreateReportRequest',
            'info',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
