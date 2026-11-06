// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_component_all_of_exception_cause_stack_trace.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorComponentAllOfExceptionCauseStackTrace
    extends ErrorComponentAllOfExceptionCauseStackTrace {
  @override
  final String? classLoaderName;
  @override
  final String? moduleName;
  @override
  final String? moduleVersion;
  @override
  final String? methodName;
  @override
  final String? fileName;
  @override
  final int? lineNumber;
  @override
  final String? className;
  @override
  final bool? nativeMethod;

  factory _$ErrorComponentAllOfExceptionCauseStackTrace([
    void Function(ErrorComponentAllOfExceptionCauseStackTraceBuilder)? updates,
  ]) => (ErrorComponentAllOfExceptionCauseStackTraceBuilder()..update(updates))
      ._build();

  _$ErrorComponentAllOfExceptionCauseStackTrace._({
    this.classLoaderName,
    this.moduleName,
    this.moduleVersion,
    this.methodName,
    this.fileName,
    this.lineNumber,
    this.className,
    this.nativeMethod,
  }) : super._();
  @override
  ErrorComponentAllOfExceptionCauseStackTrace rebuild(
    void Function(ErrorComponentAllOfExceptionCauseStackTraceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ErrorComponentAllOfExceptionCauseStackTraceBuilder toBuilder() =>
      ErrorComponentAllOfExceptionCauseStackTraceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorComponentAllOfExceptionCauseStackTrace &&
        classLoaderName == other.classLoaderName &&
        moduleName == other.moduleName &&
        moduleVersion == other.moduleVersion &&
        methodName == other.methodName &&
        fileName == other.fileName &&
        lineNumber == other.lineNumber &&
        className == other.className &&
        nativeMethod == other.nativeMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, classLoaderName.hashCode);
    _$hash = $jc(_$hash, moduleName.hashCode);
    _$hash = $jc(_$hash, moduleVersion.hashCode);
    _$hash = $jc(_$hash, methodName.hashCode);
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jc(_$hash, lineNumber.hashCode);
    _$hash = $jc(_$hash, className.hashCode);
    _$hash = $jc(_$hash, nativeMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ErrorComponentAllOfExceptionCauseStackTrace',
          )
          ..add('classLoaderName', classLoaderName)
          ..add('moduleName', moduleName)
          ..add('moduleVersion', moduleVersion)
          ..add('methodName', methodName)
          ..add('fileName', fileName)
          ..add('lineNumber', lineNumber)
          ..add('className', className)
          ..add('nativeMethod', nativeMethod))
        .toString();
  }
}

class ErrorComponentAllOfExceptionCauseStackTraceBuilder
    implements
        Builder<
          ErrorComponentAllOfExceptionCauseStackTrace,
          ErrorComponentAllOfExceptionCauseStackTraceBuilder
        > {
  _$ErrorComponentAllOfExceptionCauseStackTrace? _$v;

  String? _classLoaderName;
  String? get classLoaderName => _$this._classLoaderName;
  set classLoaderName(String? classLoaderName) =>
      _$this._classLoaderName = classLoaderName;

  String? _moduleName;
  String? get moduleName => _$this._moduleName;
  set moduleName(String? moduleName) => _$this._moduleName = moduleName;

  String? _moduleVersion;
  String? get moduleVersion => _$this._moduleVersion;
  set moduleVersion(String? moduleVersion) =>
      _$this._moduleVersion = moduleVersion;

  String? _methodName;
  String? get methodName => _$this._methodName;
  set methodName(String? methodName) => _$this._methodName = methodName;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  int? _lineNumber;
  int? get lineNumber => _$this._lineNumber;
  set lineNumber(int? lineNumber) => _$this._lineNumber = lineNumber;

  String? _className;
  String? get className => _$this._className;
  set className(String? className) => _$this._className = className;

  bool? _nativeMethod;
  bool? get nativeMethod => _$this._nativeMethod;
  set nativeMethod(bool? nativeMethod) => _$this._nativeMethod = nativeMethod;

  ErrorComponentAllOfExceptionCauseStackTraceBuilder() {
    ErrorComponentAllOfExceptionCauseStackTrace._defaults(this);
  }

  ErrorComponentAllOfExceptionCauseStackTraceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _classLoaderName = $v.classLoaderName;
      _moduleName = $v.moduleName;
      _moduleVersion = $v.moduleVersion;
      _methodName = $v.methodName;
      _fileName = $v.fileName;
      _lineNumber = $v.lineNumber;
      _className = $v.className;
      _nativeMethod = $v.nativeMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorComponentAllOfExceptionCauseStackTrace other) {
    _$v = other as _$ErrorComponentAllOfExceptionCauseStackTrace;
  }

  @override
  void update(
    void Function(ErrorComponentAllOfExceptionCauseStackTraceBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ErrorComponentAllOfExceptionCauseStackTrace build() => _build();

  _$ErrorComponentAllOfExceptionCauseStackTrace _build() {
    final _$result =
        _$v ??
        _$ErrorComponentAllOfExceptionCauseStackTrace._(
          classLoaderName: classLoaderName,
          moduleName: moduleName,
          moduleVersion: moduleVersion,
          methodName: methodName,
          fileName: fileName,
          lineNumber: lineNumber,
          className: className,
          nativeMethod: nativeMethod,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
