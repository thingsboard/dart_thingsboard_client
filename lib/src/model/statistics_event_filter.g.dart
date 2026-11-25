// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatisticsEventFilter extends StatisticsEventFilter {
  @override
  final int? minErrorsOccurred;
  @override
  final String? server;
  @override
  final int? maxErrorsOccurred;
  @override
  final int? maxMessagesProcessed;
  @override
  final int? minMessagesProcessed;
  @override
  final EventType eventType;
  @override
  final bool? notEmpty;

  factory _$StatisticsEventFilter([
    void Function(StatisticsEventFilterBuilder)? updates,
  ]) => (StatisticsEventFilterBuilder()..update(updates))._build();

  _$StatisticsEventFilter._({
    this.minErrorsOccurred,
    this.server,
    this.maxErrorsOccurred,
    this.maxMessagesProcessed,
    this.minMessagesProcessed,
    required this.eventType,
    this.notEmpty,
  }) : super._();
  @override
  StatisticsEventFilter rebuild(
    void Function(StatisticsEventFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StatisticsEventFilterBuilder toBuilder() =>
      StatisticsEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatisticsEventFilter &&
        minErrorsOccurred == other.minErrorsOccurred &&
        server == other.server &&
        maxErrorsOccurred == other.maxErrorsOccurred &&
        maxMessagesProcessed == other.maxMessagesProcessed &&
        minMessagesProcessed == other.minMessagesProcessed &&
        eventType == other.eventType &&
        notEmpty == other.notEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minErrorsOccurred.hashCode);
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, maxErrorsOccurred.hashCode);
    _$hash = $jc(_$hash, maxMessagesProcessed.hashCode);
    _$hash = $jc(_$hash, minMessagesProcessed.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatisticsEventFilter')
          ..add('minErrorsOccurred', minErrorsOccurred)
          ..add('server', server)
          ..add('maxErrorsOccurred', maxErrorsOccurred)
          ..add('maxMessagesProcessed', maxMessagesProcessed)
          ..add('minMessagesProcessed', minMessagesProcessed)
          ..add('eventType', eventType)
          ..add('notEmpty', notEmpty))
        .toString();
  }
}

class StatisticsEventFilterBuilder
    implements
        Builder<StatisticsEventFilter, StatisticsEventFilterBuilder>,
        EventFilterBuilder {
  _$StatisticsEventFilter? _$v;

  int? _minErrorsOccurred;
  int? get minErrorsOccurred => _$this._minErrorsOccurred;
  set minErrorsOccurred(covariant int? minErrorsOccurred) =>
      _$this._minErrorsOccurred = minErrorsOccurred;

  String? _server;
  String? get server => _$this._server;
  set server(covariant String? server) => _$this._server = server;

  int? _maxErrorsOccurred;
  int? get maxErrorsOccurred => _$this._maxErrorsOccurred;
  set maxErrorsOccurred(covariant int? maxErrorsOccurred) =>
      _$this._maxErrorsOccurred = maxErrorsOccurred;

  int? _maxMessagesProcessed;
  int? get maxMessagesProcessed => _$this._maxMessagesProcessed;
  set maxMessagesProcessed(covariant int? maxMessagesProcessed) =>
      _$this._maxMessagesProcessed = maxMessagesProcessed;

  int? _minMessagesProcessed;
  int? get minMessagesProcessed => _$this._minMessagesProcessed;
  set minMessagesProcessed(covariant int? minMessagesProcessed) =>
      _$this._minMessagesProcessed = minMessagesProcessed;

  EventType? _eventType;
  EventType? get eventType => _$this._eventType;
  set eventType(covariant EventType? eventType) =>
      _$this._eventType = eventType;

  bool? _notEmpty;
  bool? get notEmpty => _$this._notEmpty;
  set notEmpty(covariant bool? notEmpty) => _$this._notEmpty = notEmpty;

  StatisticsEventFilterBuilder() {
    StatisticsEventFilter._defaults(this);
  }

  StatisticsEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minErrorsOccurred = $v.minErrorsOccurred;
      _server = $v.server;
      _maxErrorsOccurred = $v.maxErrorsOccurred;
      _maxMessagesProcessed = $v.maxMessagesProcessed;
      _minMessagesProcessed = $v.minMessagesProcessed;
      _eventType = $v.eventType;
      _notEmpty = $v.notEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant StatisticsEventFilter other) {
    _$v = other as _$StatisticsEventFilter;
  }

  @override
  void update(void Function(StatisticsEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatisticsEventFilter build() => _build();

  _$StatisticsEventFilter _build() {
    final _$result =
        _$v ??
        _$StatisticsEventFilter._(
          minErrorsOccurred: minErrorsOccurred,
          server: server,
          maxErrorsOccurred: maxErrorsOccurred,
          maxMessagesProcessed: maxMessagesProcessed,
          minMessagesProcessed: minMessagesProcessed,
          eventType: BuiltValueNullFieldError.checkNotNull(
            eventType,
            r'StatisticsEventFilter',
            'eventType',
          ),
          notEmpty: notEmpty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
