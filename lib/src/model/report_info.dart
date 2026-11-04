// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/report_id.dart';
import 'package:thingsboard_client/src/model/entity_info.dart';
import 'package:thingsboard_client/src/model/report_template_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/tb_report_format.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_info.g.dart';

/// ReportInfo
///
/// Properties:
/// * [id]
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId]
/// * [customerId]
/// * [templateId]
/// * [format]
/// * [name]
/// * [userId]
/// * [publicKey]
/// * [templateInfo]
/// * [customerTitle]
/// * [userName]
/// * [ownerId] - JSON object with Customer or Tenant Id
/// * [public]
@BuiltValue()
abstract class ReportInfo implements Built<ReportInfo, ReportInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  ReportId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'tenantId')
  TenantId get tenantId;

  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  @BuiltValueField(wireName: r'templateId')
  ReportTemplateId get templateId;

  @BuiltValueField(wireName: r'format')
  TbReportFormat get format;
  // enum formatEnum {  PDF,  CSV,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'userId')
  UserId get userId;

  @BuiltValueField(wireName: r'publicKey')
  String? get publicKey;

  @BuiltValueField(wireName: r'templateInfo')
  EntityInfo? get templateInfo;

  @BuiltValueField(wireName: r'customerTitle')
  String? get customerTitle;

  @BuiltValueField(wireName: r'userName')
  String? get userName;

  /// JSON object with Customer or Tenant Id
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  @BuiltValueField(wireName: r'public')
  bool? get public;

  ReportInfo._();

  factory ReportInfo([void updates(ReportInfoBuilder b)]) = _$ReportInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportInfo> get serializer => _$ReportInfoSerializer();
}

class _$ReportInfoSerializer implements PrimitiveSerializer<ReportInfo> {
  @override
  final Iterable<Type> types = const [ReportInfo, _$ReportInfo];

  @override
  final String wireName = r'ReportInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(ReportId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    yield r'tenantId';
    yield serializers.serialize(
      object.tenantId,
      specifiedType: const FullType(TenantId),
    );
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    yield r'templateId';
    yield serializers.serialize(
      object.templateId,
      specifiedType: const FullType(ReportTemplateId),
    );
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(TbReportFormat),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(UserId),
    );
    if (object.publicKey != null) {
      yield r'publicKey';
      yield serializers.serialize(
        object.publicKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.templateInfo != null) {
      yield r'templateInfo';
      yield serializers.serialize(
        object.templateInfo,
        specifiedType: const FullType(EntityInfo),
      );
    }
    if (object.customerTitle != null) {
      yield r'customerTitle';
      yield serializers.serialize(
        object.customerTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.userName != null) {
      yield r'userName';
      yield serializers.serialize(
        object.userName,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.public != null) {
      yield r'public';
      yield serializers.serialize(
        object.public,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportInfo object, {
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
    required ReportInfoBuilder result,
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
                    specifiedType: const FullType.nullable(ReportId),
                  )
                  as ReportId?;
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
                    specifiedType: const FullType(TenantId),
                  )
                  as TenantId;
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
        case r'templateId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportTemplateId),
                  )
                  as ReportTemplateId;
          result.templateId.replace(valueDes);
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
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'userId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(UserId),
                  )
                  as UserId;
          result.userId.replace(valueDes);
          break;
        case r'publicKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.publicKey = valueDes;
          break;
        case r'templateInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityInfo),
                  )
                  as EntityInfo?;
          if (valueDes == null) continue;
          result.templateInfo.replace(valueDes);
          break;
        case r'customerTitle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.customerTitle = valueDes;
          break;
        case r'userName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userName = valueDes;
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
        case r'public':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.public = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportInfoBuilder();
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
