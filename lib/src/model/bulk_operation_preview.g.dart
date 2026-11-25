// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_operation_preview.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkOperationPreview extends BulkOperationPreview {
  @override
  final int? total;
  @override
  final int? eligible;
  @override
  final BuiltMap<String, int>? skippedCountsByReason;
  @override
  final BuiltList<SkippedApp>? skippedSample;

  factory _$BulkOperationPreview([
    void Function(BulkOperationPreviewBuilder)? updates,
  ]) => (BulkOperationPreviewBuilder()..update(updates))._build();

  _$BulkOperationPreview._({
    this.total,
    this.eligible,
    this.skippedCountsByReason,
    this.skippedSample,
  }) : super._();
  @override
  BulkOperationPreview rebuild(
    void Function(BulkOperationPreviewBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BulkOperationPreviewBuilder toBuilder() =>
      BulkOperationPreviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkOperationPreview &&
        total == other.total &&
        eligible == other.eligible &&
        skippedCountsByReason == other.skippedCountsByReason &&
        skippedSample == other.skippedSample;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, eligible.hashCode);
    _$hash = $jc(_$hash, skippedCountsByReason.hashCode);
    _$hash = $jc(_$hash, skippedSample.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkOperationPreview')
          ..add('total', total)
          ..add('eligible', eligible)
          ..add('skippedCountsByReason', skippedCountsByReason)
          ..add('skippedSample', skippedSample))
        .toString();
  }
}

class BulkOperationPreviewBuilder
    implements Builder<BulkOperationPreview, BulkOperationPreviewBuilder> {
  _$BulkOperationPreview? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _eligible;
  int? get eligible => _$this._eligible;
  set eligible(int? eligible) => _$this._eligible = eligible;

  MapBuilder<String, int>? _skippedCountsByReason;
  MapBuilder<String, int> get skippedCountsByReason =>
      _$this._skippedCountsByReason ??= MapBuilder<String, int>();
  set skippedCountsByReason(MapBuilder<String, int>? skippedCountsByReason) =>
      _$this._skippedCountsByReason = skippedCountsByReason;

  ListBuilder<SkippedApp>? _skippedSample;
  ListBuilder<SkippedApp> get skippedSample =>
      _$this._skippedSample ??= ListBuilder<SkippedApp>();
  set skippedSample(ListBuilder<SkippedApp>? skippedSample) =>
      _$this._skippedSample = skippedSample;

  BulkOperationPreviewBuilder() {
    BulkOperationPreview._defaults(this);
  }

  BulkOperationPreviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _eligible = $v.eligible;
      _skippedCountsByReason = $v.skippedCountsByReason?.toBuilder();
      _skippedSample = $v.skippedSample?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkOperationPreview other) {
    _$v = other as _$BulkOperationPreview;
  }

  @override
  void update(void Function(BulkOperationPreviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkOperationPreview build() => _build();

  _$BulkOperationPreview _build() {
    _$BulkOperationPreview _$result;
    try {
      _$result =
          _$v ??
          _$BulkOperationPreview._(
            total: total,
            eligible: eligible,
            skippedCountsByReason: _skippedCountsByReason?.build(),
            skippedSample: _skippedSample?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skippedCountsByReason';
        _skippedCountsByReason?.build();
        _$failedField = 'skippedSample';
        _skippedSample?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BulkOperationPreview',
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
