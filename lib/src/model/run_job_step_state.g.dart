// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_job_step_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RunJobStepState extends RunJobStepState {
  @override
  final StepFieldListString? binds;
  @override
  final StepFieldString? image;
  @override
  final StepFieldInteger? retries;
  @override
  final StepFieldListString? entrypoint;
  @override
  final StepFieldBoolean? pullImages;
  @override
  final StepFieldListString? cmd;
  @override
  final StepFieldListString? env;
  @override
  final StepFieldListString? networks;
  @override
  final StepFieldString? networkFromServiceImageRegexPattern;
  @override
  final AgentAppStepType? type;

  factory _$RunJobStepState([void Function(RunJobStepStateBuilder)? updates]) =>
      (RunJobStepStateBuilder()..update(updates))._build();

  _$RunJobStepState._({
    this.binds,
    this.image,
    this.retries,
    this.entrypoint,
    this.pullImages,
    this.cmd,
    this.env,
    this.networks,
    this.networkFromServiceImageRegexPattern,
    this.type,
  }) : super._();
  @override
  RunJobStepState rebuild(void Function(RunJobStepStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunJobStepStateBuilder toBuilder() => RunJobStepStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RunJobStepState &&
        binds == other.binds &&
        image == other.image &&
        retries == other.retries &&
        entrypoint == other.entrypoint &&
        pullImages == other.pullImages &&
        cmd == other.cmd &&
        env == other.env &&
        networks == other.networks &&
        networkFromServiceImageRegexPattern ==
            other.networkFromServiceImageRegexPattern &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, binds.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, retries.hashCode);
    _$hash = $jc(_$hash, entrypoint.hashCode);
    _$hash = $jc(_$hash, pullImages.hashCode);
    _$hash = $jc(_$hash, cmd.hashCode);
    _$hash = $jc(_$hash, env.hashCode);
    _$hash = $jc(_$hash, networks.hashCode);
    _$hash = $jc(_$hash, networkFromServiceImageRegexPattern.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RunJobStepState')
          ..add('binds', binds)
          ..add('image', image)
          ..add('retries', retries)
          ..add('entrypoint', entrypoint)
          ..add('pullImages', pullImages)
          ..add('cmd', cmd)
          ..add('env', env)
          ..add('networks', networks)
          ..add(
            'networkFromServiceImageRegexPattern',
            networkFromServiceImageRegexPattern,
          )
          ..add('type', type))
        .toString();
  }
}

class RunJobStepStateBuilder
    implements
        Builder<RunJobStepState, RunJobStepStateBuilder>,
        AgentAppStepStateBuilder {
  _$RunJobStepState? _$v;

  StepFieldListStringBuilder? _binds;
  StepFieldListStringBuilder get binds =>
      _$this._binds ??= StepFieldListStringBuilder();
  set binds(covariant StepFieldListStringBuilder? binds) =>
      _$this._binds = binds;

  StepFieldStringBuilder? _image;
  StepFieldStringBuilder get image =>
      _$this._image ??= StepFieldStringBuilder();
  set image(covariant StepFieldStringBuilder? image) => _$this._image = image;

  StepFieldIntegerBuilder? _retries;
  StepFieldIntegerBuilder get retries =>
      _$this._retries ??= StepFieldIntegerBuilder();
  set retries(covariant StepFieldIntegerBuilder? retries) =>
      _$this._retries = retries;

  StepFieldListStringBuilder? _entrypoint;
  StepFieldListStringBuilder get entrypoint =>
      _$this._entrypoint ??= StepFieldListStringBuilder();
  set entrypoint(covariant StepFieldListStringBuilder? entrypoint) =>
      _$this._entrypoint = entrypoint;

  StepFieldBooleanBuilder? _pullImages;
  StepFieldBooleanBuilder get pullImages =>
      _$this._pullImages ??= StepFieldBooleanBuilder();
  set pullImages(covariant StepFieldBooleanBuilder? pullImages) =>
      _$this._pullImages = pullImages;

  StepFieldListStringBuilder? _cmd;
  StepFieldListStringBuilder get cmd =>
      _$this._cmd ??= StepFieldListStringBuilder();
  set cmd(covariant StepFieldListStringBuilder? cmd) => _$this._cmd = cmd;

  StepFieldListStringBuilder? _env;
  StepFieldListStringBuilder get env =>
      _$this._env ??= StepFieldListStringBuilder();
  set env(covariant StepFieldListStringBuilder? env) => _$this._env = env;

  StepFieldListStringBuilder? _networks;
  StepFieldListStringBuilder get networks =>
      _$this._networks ??= StepFieldListStringBuilder();
  set networks(covariant StepFieldListStringBuilder? networks) =>
      _$this._networks = networks;

  StepFieldStringBuilder? _networkFromServiceImageRegexPattern;
  StepFieldStringBuilder get networkFromServiceImageRegexPattern =>
      _$this._networkFromServiceImageRegexPattern ??= StepFieldStringBuilder();
  set networkFromServiceImageRegexPattern(
    covariant StepFieldStringBuilder? networkFromServiceImageRegexPattern,
  ) => _$this._networkFromServiceImageRegexPattern =
      networkFromServiceImageRegexPattern;

  AgentAppStepType? _type;
  AgentAppStepType? get type => _$this._type;
  set type(covariant AgentAppStepType? type) => _$this._type = type;

  RunJobStepStateBuilder() {
    RunJobStepState._defaults(this);
  }

  RunJobStepStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _binds = $v.binds?.toBuilder();
      _image = $v.image?.toBuilder();
      _retries = $v.retries?.toBuilder();
      _entrypoint = $v.entrypoint?.toBuilder();
      _pullImages = $v.pullImages?.toBuilder();
      _cmd = $v.cmd?.toBuilder();
      _env = $v.env?.toBuilder();
      _networks = $v.networks?.toBuilder();
      _networkFromServiceImageRegexPattern = $v
          .networkFromServiceImageRegexPattern
          ?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RunJobStepState other) {
    _$v = other as _$RunJobStepState;
  }

  @override
  void update(void Function(RunJobStepStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RunJobStepState build() => _build();

  _$RunJobStepState _build() {
    _$RunJobStepState _$result;
    try {
      _$result =
          _$v ??
          _$RunJobStepState._(
            binds: _binds?.build(),
            image: _image?.build(),
            retries: _retries?.build(),
            entrypoint: _entrypoint?.build(),
            pullImages: _pullImages?.build(),
            cmd: _cmd?.build(),
            env: _env?.build(),
            networks: _networks?.build(),
            networkFromServiceImageRegexPattern:
                _networkFromServiceImageRegexPattern?.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'binds';
        _binds?.build();
        _$failedField = 'image';
        _image?.build();
        _$failedField = 'retries';
        _retries?.build();
        _$failedField = 'entrypoint';
        _entrypoint?.build();
        _$failedField = 'pullImages';
        _pullImages?.build();
        _$failedField = 'cmd';
        _cmd?.build();
        _$failedField = 'env';
        _env?.build();
        _$failedField = 'networks';
        _networks?.build();
        _$failedField = 'networkFromServiceImageRegexPattern';
        _networkFromServiceImageRegexPattern?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RunJobStepState',
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
