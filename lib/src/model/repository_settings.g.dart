// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RepositorySettings extends RepositorySettings {
  @override
  final String? repositoryUri;
  @override
  final RepositoryAuthMethod? authMethod;
  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? privateKeyFileName;
  @override
  final String? privateKey;
  @override
  final String? privateKeyPassword;
  @override
  final String? defaultBranch;
  @override
  final bool? readOnly;
  @override
  final bool? showMergeCommits;
  @override
  final bool? localOnly;

  factory _$RepositorySettings([
    void Function(RepositorySettingsBuilder)? updates,
  ]) => (RepositorySettingsBuilder()..update(updates))._build();

  _$RepositorySettings._({
    this.repositoryUri,
    this.authMethod,
    this.username,
    this.password,
    this.privateKeyFileName,
    this.privateKey,
    this.privateKeyPassword,
    this.defaultBranch,
    this.readOnly,
    this.showMergeCommits,
    this.localOnly,
  }) : super._();
  @override
  RepositorySettings rebuild(
    void Function(RepositorySettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RepositorySettingsBuilder toBuilder() =>
      RepositorySettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositorySettings &&
        repositoryUri == other.repositoryUri &&
        authMethod == other.authMethod &&
        username == other.username &&
        password == other.password &&
        privateKeyFileName == other.privateKeyFileName &&
        privateKey == other.privateKey &&
        privateKeyPassword == other.privateKeyPassword &&
        defaultBranch == other.defaultBranch &&
        readOnly == other.readOnly &&
        showMergeCommits == other.showMergeCommits &&
        localOnly == other.localOnly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, repositoryUri.hashCode);
    _$hash = $jc(_$hash, authMethod.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, privateKeyFileName.hashCode);
    _$hash = $jc(_$hash, privateKey.hashCode);
    _$hash = $jc(_$hash, privateKeyPassword.hashCode);
    _$hash = $jc(_$hash, defaultBranch.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jc(_$hash, showMergeCommits.hashCode);
    _$hash = $jc(_$hash, localOnly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RepositorySettings')
          ..add('repositoryUri', repositoryUri)
          ..add('authMethod', authMethod)
          ..add('username', username)
          ..add('password', password)
          ..add('privateKeyFileName', privateKeyFileName)
          ..add('privateKey', privateKey)
          ..add('privateKeyPassword', privateKeyPassword)
          ..add('defaultBranch', defaultBranch)
          ..add('readOnly', readOnly)
          ..add('showMergeCommits', showMergeCommits)
          ..add('localOnly', localOnly))
        .toString();
  }
}

class RepositorySettingsBuilder
    implements Builder<RepositorySettings, RepositorySettingsBuilder> {
  _$RepositorySettings? _$v;

  String? _repositoryUri;
  String? get repositoryUri => _$this._repositoryUri;
  set repositoryUri(String? repositoryUri) =>
      _$this._repositoryUri = repositoryUri;

  RepositoryAuthMethod? _authMethod;
  RepositoryAuthMethod? get authMethod => _$this._authMethod;
  set authMethod(RepositoryAuthMethod? authMethod) =>
      _$this._authMethod = authMethod;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _privateKeyFileName;
  String? get privateKeyFileName => _$this._privateKeyFileName;
  set privateKeyFileName(String? privateKeyFileName) =>
      _$this._privateKeyFileName = privateKeyFileName;

  String? _privateKey;
  String? get privateKey => _$this._privateKey;
  set privateKey(String? privateKey) => _$this._privateKey = privateKey;

  String? _privateKeyPassword;
  String? get privateKeyPassword => _$this._privateKeyPassword;
  set privateKeyPassword(String? privateKeyPassword) =>
      _$this._privateKeyPassword = privateKeyPassword;

  String? _defaultBranch;
  String? get defaultBranch => _$this._defaultBranch;
  set defaultBranch(String? defaultBranch) =>
      _$this._defaultBranch = defaultBranch;

  bool? _readOnly;
  bool? get readOnly => _$this._readOnly;
  set readOnly(bool? readOnly) => _$this._readOnly = readOnly;

  bool? _showMergeCommits;
  bool? get showMergeCommits => _$this._showMergeCommits;
  set showMergeCommits(bool? showMergeCommits) =>
      _$this._showMergeCommits = showMergeCommits;

  bool? _localOnly;
  bool? get localOnly => _$this._localOnly;
  set localOnly(bool? localOnly) => _$this._localOnly = localOnly;

  RepositorySettingsBuilder() {
    RepositorySettings._defaults(this);
  }

  RepositorySettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _repositoryUri = $v.repositoryUri;
      _authMethod = $v.authMethod;
      _username = $v.username;
      _password = $v.password;
      _privateKeyFileName = $v.privateKeyFileName;
      _privateKey = $v.privateKey;
      _privateKeyPassword = $v.privateKeyPassword;
      _defaultBranch = $v.defaultBranch;
      _readOnly = $v.readOnly;
      _showMergeCommits = $v.showMergeCommits;
      _localOnly = $v.localOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositorySettings other) {
    _$v = other as _$RepositorySettings;
  }

  @override
  void update(void Function(RepositorySettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RepositorySettings build() => _build();

  _$RepositorySettings _build() {
    final _$result =
        _$v ??
        _$RepositorySettings._(
          repositoryUri: repositoryUri,
          authMethod: authMethod,
          username: username,
          password: password,
          privateKeyFileName: privateKeyFileName,
          privateKey: privateKey,
          privateKeyPassword: privateKeyPassword,
          defaultBranch: defaultBranch,
          readOnly: readOnly,
          showMergeCommits: showMergeCommits,
          localOnly: localOnly,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
