// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_hub_models_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GitHubModelsProviderConfig extends GitHubModelsProviderConfig {
  @override
  final String personalAccessToken;

  factory _$GitHubModelsProviderConfig([
    void Function(GitHubModelsProviderConfigBuilder)? updates,
  ]) => (GitHubModelsProviderConfigBuilder()..update(updates))._build();

  _$GitHubModelsProviderConfig._({required this.personalAccessToken})
    : super._();
  @override
  GitHubModelsProviderConfig rebuild(
    void Function(GitHubModelsProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GitHubModelsProviderConfigBuilder toBuilder() =>
      GitHubModelsProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitHubModelsProviderConfig &&
        personalAccessToken == other.personalAccessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, personalAccessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GitHubModelsProviderConfig',
    )..add('personalAccessToken', personalAccessToken)).toString();
  }
}

class GitHubModelsProviderConfigBuilder
    implements
        Builder<GitHubModelsProviderConfig, GitHubModelsProviderConfigBuilder> {
  _$GitHubModelsProviderConfig? _$v;

  String? _personalAccessToken;
  String? get personalAccessToken => _$this._personalAccessToken;
  set personalAccessToken(String? personalAccessToken) =>
      _$this._personalAccessToken = personalAccessToken;

  GitHubModelsProviderConfigBuilder() {
    GitHubModelsProviderConfig._defaults(this);
  }

  GitHubModelsProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personalAccessToken = $v.personalAccessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitHubModelsProviderConfig other) {
    _$v = other as _$GitHubModelsProviderConfig;
  }

  @override
  void update(void Function(GitHubModelsProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GitHubModelsProviderConfig build() => _build();

  _$GitHubModelsProviderConfig _build() {
    final _$result =
        _$v ??
        _$GitHubModelsProviderConfig._(
          personalAccessToken: BuiltValueNullFieldError.checkNotNull(
            personalAccessToken,
            r'GitHubModelsProviderConfig',
            'personalAccessToken',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
