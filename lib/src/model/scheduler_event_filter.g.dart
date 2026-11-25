// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SchedulerEventFilter extends SchedulerEventFilter {
  @override
  final AliasEntityId? defaultStateEntity;
  @override
  final bool? originatorStateEntity;
  @override
  final AliasEntityId? originator;
  @override
  final String? eventType;
  @override
  final String type;

  factory _$SchedulerEventFilter([
    void Function(SchedulerEventFilterBuilder)? updates,
  ]) => (SchedulerEventFilterBuilder()..update(updates))._build();

  _$SchedulerEventFilter._({
    this.defaultStateEntity,
    this.originatorStateEntity,
    this.originator,
    this.eventType,
    required this.type,
  }) : super._();
  @override
  SchedulerEventFilter rebuild(
    void Function(SchedulerEventFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SchedulerEventFilterBuilder toBuilder() =>
      SchedulerEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchedulerEventFilter &&
        defaultStateEntity == other.defaultStateEntity &&
        originatorStateEntity == other.originatorStateEntity &&
        originator == other.originator &&
        eventType == other.eventType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultStateEntity.hashCode);
    _$hash = $jc(_$hash, originatorStateEntity.hashCode);
    _$hash = $jc(_$hash, originator.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SchedulerEventFilter')
          ..add('defaultStateEntity', defaultStateEntity)
          ..add('originatorStateEntity', originatorStateEntity)
          ..add('originator', originator)
          ..add('eventType', eventType)
          ..add('type', type))
        .toString();
  }
}

class SchedulerEventFilterBuilder
    implements
        Builder<SchedulerEventFilter, SchedulerEventFilterBuilder>,
        EntityFilterBuilder {
  _$SchedulerEventFilter? _$v;

  AliasEntityIdBuilder? _defaultStateEntity;
  AliasEntityIdBuilder get defaultStateEntity =>
      _$this._defaultStateEntity ??= AliasEntityIdBuilder();
  set defaultStateEntity(covariant AliasEntityIdBuilder? defaultStateEntity) =>
      _$this._defaultStateEntity = defaultStateEntity;

  bool? _originatorStateEntity;
  bool? get originatorStateEntity => _$this._originatorStateEntity;
  set originatorStateEntity(covariant bool? originatorStateEntity) =>
      _$this._originatorStateEntity = originatorStateEntity;

  AliasEntityIdBuilder? _originator;
  AliasEntityIdBuilder get originator =>
      _$this._originator ??= AliasEntityIdBuilder();
  set originator(covariant AliasEntityIdBuilder? originator) =>
      _$this._originator = originator;

  String? _eventType;
  String? get eventType => _$this._eventType;
  set eventType(covariant String? eventType) => _$this._eventType = eventType;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  SchedulerEventFilterBuilder() {
    SchedulerEventFilter._defaults(this);
  }

  SchedulerEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultStateEntity = $v.defaultStateEntity?.toBuilder();
      _originatorStateEntity = $v.originatorStateEntity;
      _originator = $v.originator?.toBuilder();
      _eventType = $v.eventType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SchedulerEventFilter other) {
    _$v = other as _$SchedulerEventFilter;
  }

  @override
  void update(void Function(SchedulerEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SchedulerEventFilter build() => _build();

  _$SchedulerEventFilter _build() {
    _$SchedulerEventFilter _$result;
    try {
      _$result =
          _$v ??
          _$SchedulerEventFilter._(
            defaultStateEntity: _defaultStateEntity?.build(),
            originatorStateEntity: originatorStateEntity,
            originator: _originator?.build(),
            eventType: eventType,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SchedulerEventFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'defaultStateEntity';
        _defaultStateEntity?.build();

        _$failedField = 'originator';
        _originator?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SchedulerEventFilter',
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
