// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/report_template_type.dart';
import 'package:thingsboard_client/src/model/report_template_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/report_template_config.dart';
import 'package:thingsboard_client/src/model/tb_report_format.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_template.g.dart';

/// A JSON value representing the Report Template.
///
/// Properties:
/// * [id] - JSON object with the report template Id. Specify this field to update the report. Referencing non-existing report template Id will cause error. Omit this field to create new report template
/// * [createdTime] - Timestamp of the report template creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id. Tenant Id of the report template can't be changed.
/// * [customerId] - JSON object with Customer Id. Optional: when omitted the Report Template is owned by the tenant. When the request is made by a Customer user, the value is forced to the user's own Customer Id.
/// * [name] - Report name
/// * [format] - Report format
/// * [type] - Report template type
/// * [description] - Description
/// * [version]
/// * [configuration] - a JSON value with report template configuration
/// * [ownerId] - JSON object with Customer or Tenant Id
@BuiltValue()
abstract class ReportTemplate
    implements Built<ReportTemplate, ReportTemplateBuilder> {
  /// JSON object with the report template Id. Specify this field to update the report. Referencing non-existing report template Id will cause error. Omit this field to create new report template
  @BuiltValueField(wireName: r'id')
  ReportTemplateId? get id;

  /// Timestamp of the report template creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id. Tenant Id of the report template can't be changed.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id. Optional: when omitted the Report Template is owned by the tenant. When the request is made by a Customer user, the value is forced to the user's own Customer Id.
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// Report name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Report format
  @BuiltValueField(wireName: r'format')
  TbReportFormat get format;
  // enum formatEnum {  PDF,  CSV,  };

  /// Report template type
  @BuiltValueField(wireName: r'type')
  ReportTemplateType get type;
  // enum typeEnum {  REPORT,  SUB_REPORT,  };

  /// Description
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// a JSON value with report template configuration
  @BuiltValueField(wireName: r'configuration')
  ReportTemplateConfig get configuration;

  /// JSON object with Customer or Tenant Id
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  ReportTemplate._();

  factory ReportTemplate([void updates(ReportTemplateBuilder b)]) =
      _$ReportTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportTemplate> get serializer =>
      _$ReportTemplateSerializer();
}

class _$ReportTemplateSerializer
    implements PrimitiveSerializer<ReportTemplate> {
  @override
  final Iterable<Type> types = const [ReportTemplate, _$ReportTemplate];

  @override
  final String wireName = r'ReportTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(ReportTemplateId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(TbReportFormat),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReportTemplateType),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    yield r'configuration';
    yield serializers.serialize(
      object.configuration,
      specifiedType: const FullType(ReportTemplateConfig),
    );
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(EntityId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportTemplateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReportTemplateId),
                  )
                  as ReportTemplateId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'customerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TbReportFormat),
                  )
                  as TbReportFormat;
          result.format = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportTemplateType),
                  )
                  as ReportTemplateType;
          result.type = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'configuration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportTemplateConfig),
                  )
                  as ReportTemplateConfig;
          result.configuration = valueDes;
          break;
        case r'ownerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportTemplateBuilder();
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
