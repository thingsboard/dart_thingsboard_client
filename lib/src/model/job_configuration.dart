// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dummy_job_configuration.dart';
import 'package:thingsboard_client/src/model/task_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/report_job_configuration.dart';
import 'package:thingsboard_client/src/model/cf_reprocessing_job_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_configuration.g.dart';

/// JobConfiguration
///
/// Properties:
/// * [tasksKey]
/// * [toReprocess]
/// * [type]
@BuiltValue(instantiable: false)
abstract class JobConfiguration {
  @BuiltValueField(wireName: r'tasksKey')
  String get tasksKey;

  @BuiltValueField(wireName: r'toReprocess')
  BuiltList<TaskResult>? get toReprocess;

  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'CF_REPROCESSING': CfReprocessingJobConfiguration,
    r'DUMMY': DummyJobConfiguration,
    r'REPORT': ReportJobConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<JobConfiguration> get serializer =>
      _$JobConfigurationSerializer();
}

extension JobConfigurationDiscriminatorExt on JobConfiguration {
  String? get discriminatorValue {
    if (this is CfReprocessingJobConfiguration) {
      return r'CF_REPROCESSING';
    }
    if (this is DummyJobConfiguration) {
      return r'DUMMY';
    }
    if (this is ReportJobConfiguration) {
      return r'REPORT';
    }
    return null;
  }
}

extension JobConfigurationBuilderDiscriminatorExt on JobConfigurationBuilder {
  String? get discriminatorValue {
    if (this is CfReprocessingJobConfigurationBuilder) {
      return r'CF_REPROCESSING';
    }
    if (this is DummyJobConfigurationBuilder) {
      return r'DUMMY';
    }
    if (this is ReportJobConfigurationBuilder) {
      return r'REPORT';
    }
    return null;
  }
}

class _$JobConfigurationSerializer
    implements PrimitiveSerializer<JobConfiguration> {
  @override
  final Iterable<Type> types = const [JobConfiguration];

  @override
  final String wireName = r'JobConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JobConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tasksKey';
    yield serializers.serialize(
      object.tasksKey,
      specifiedType: const FullType(String),
    );
    if (object.toReprocess != null) {
      yield r'toReprocess';
      yield serializers.serialize(
        object.toReprocess,
        specifiedType: const FullType(BuiltList, [FullType(TaskResult)]),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    JobConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CfReprocessingJobConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(CfReprocessingJobConfiguration),
      )!;
    }
    if (object is DummyJobConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DummyJobConfiguration),
      )!;
    }
    if (object is ReportJobConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ReportJobConfiguration),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  JobConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(JobConfiguration.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'CF_REPROCESSING':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(CfReprocessingJobConfiguration),
            )
            as CfReprocessingJobConfiguration;
      case r'DUMMY':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DummyJobConfiguration),
            )
            as DummyJobConfiguration;
      case r'REPORT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ReportJobConfiguration),
            )
            as ReportJobConfiguration;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($JobConfiguration),
            )
            as $JobConfiguration;
    }
  }
}

/// a concrete implementation of [JobConfiguration], since [JobConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $JobConfiguration
    implements
        JobConfiguration,
        Built<$JobConfiguration, $JobConfigurationBuilder> {
  $JobConfiguration._();

  factory $JobConfiguration([
    void Function($JobConfigurationBuilder)? updates,
  ]) = _$$JobConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($JobConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$JobConfiguration> get serializer =>
      _$$JobConfigurationSerializer();
}

class _$$JobConfigurationSerializer
    implements PrimitiveSerializer<$JobConfiguration> {
  @override
  final Iterable<Type> types = const [$JobConfiguration, _$$JobConfiguration];

  @override
  final String wireName = r'$JobConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $JobConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(JobConfiguration),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JobConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tasksKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tasksKey = valueDes;
          break;
        case r'toReprocess':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TaskResult),
                    ]),
                  )
                  as BuiltList<TaskResult>?;
          if (valueDes == null) continue;
          result.toReprocess.replace(valueDes);
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $JobConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $JobConfigurationBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
