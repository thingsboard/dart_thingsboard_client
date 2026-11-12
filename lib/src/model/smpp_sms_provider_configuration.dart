// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/sms_provider_configuration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/smpp_bind_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'smpp_sms_provider_configuration.g.dart';

/// SmppSmsProviderConfiguration
///
/// Properties:
/// * [type]
/// * [protocolVersion] - SMPP version
/// * [host] - SMPP host
/// * [port] - SMPP port
/// * [systemId] - System ID
/// * [password] - Password
/// * [systemType] - System type
/// * [bindType] - TX - Transmitter, RX - Receiver, TRX - Transciever. By default TX is used
/// * [serviceType] - Service type
/// * [sourceAddress] - Source address
/// * [sourceTon] - Source TON (Type of Number). Needed is source address is set. 5 by default. 0 - Unknown 1 - International 2 - National 3 - Network Specific 4 - Subscriber Number 5 - Alphanumeric 6 - Abbreviated
/// * [sourceNpi] - Source NPI (Numbering Plan Identification). Needed is source address is set. 0 by default. 0 - Unknown 1 - ISDN/telephone numbering plan (E163/E164) 3 - Data numbering plan (X.121) 4 - Telex numbering plan (F.69) 6 - Land Mobile (E.212) =6 8 - National numbering plan 9 - Private numbering plan 10 - ERMES numbering plan (ETSI DE/PS 3 01-3) 13 - Internet (IP) 18 - WAP Client Id (to be defined by WAP Forum)
/// * [destinationTon] - Destination TON (Type of Number). 5 by default. 0 - Unknown 1 - International 2 - National 3 - Network Specific 4 - Subscriber Number 5 - Alphanumeric 6 - Abbreviated
/// * [destinationNpi] - Destination NPI (Numbering Plan Identification). 0 by default. 0 - Unknown 1 - ISDN/telephone numbering plan (E163/E164) 3 - Data numbering plan (X.121) 4 - Telex numbering plan (F.69) 6 - Land Mobile (E.212) =6 8 - National numbering plan 9 - Private numbering plan 10 - ERMES numbering plan (ETSI DE/PS 3 01-3) 13 - Internet (IP) 18 - WAP Client Id (to be defined by WAP Forum)
/// * [addressRange] - Address range
/// * [codingScheme] - 0 - SMSC Default Alphabet (ASCII for short and long code and to GSM for toll-free, used as default) 1 - IA5 (ASCII for short and long code, Latin 9 for toll-free (ISO-8859-9)) 2 - Octet Unspecified (8-bit binary) 3 - Latin 1 (ISO-8859-1) 4 - Octet Unspecified (8-bit binary) 5 - JIS (X 0208-1990) 6 - Cyrillic (ISO-8859-5) 7 - Latin/Hebrew (ISO-8859-8) 8 - UCS2/UTF-16 (ISO/IEC-10646) 9 - Pictogram Encoding 10 - Music Codes (ISO-2022-JP) 13 - Extended Kanji JIS (X 0212-1990) 14 - Korean Graphic Character Set (KS C 5601/KS X 1001)
@BuiltValue()
abstract class SmppSmsProviderConfiguration
    implements
        SmsProviderConfiguration,
        Built<
          SmppSmsProviderConfiguration,
          SmppSmsProviderConfigurationBuilder
        > {
  /// Service type
  @BuiltValueField(wireName: r'serviceType')
  String? get serviceType;

  /// System ID
  @BuiltValueField(wireName: r'systemId')
  String get systemId;

  /// Source address
  @BuiltValueField(wireName: r'sourceAddress')
  String? get sourceAddress;

  /// TX - Transmitter, RX - Receiver, TRX - Transciever. By default TX is used
  @BuiltValueField(wireName: r'bindType')
  SmppBindType? get bindType;
  // enum bindTypeEnum {  TX,  RX,  TRX,  };

  /// Source NPI (Numbering Plan Identification). Needed is source address is set. 0 by default. 0 - Unknown 1 - ISDN/telephone numbering plan (E163/E164) 3 - Data numbering plan (X.121) 4 - Telex numbering plan (F.69) 6 - Land Mobile (E.212) =6 8 - National numbering plan 9 - Private numbering plan 10 - ERMES numbering plan (ETSI DE/PS 3 01-3) 13 - Internet (IP) 18 - WAP Client Id (to be defined by WAP Forum)
  @BuiltValueField(wireName: r'sourceNpi')
  String? get sourceNpi;

  /// Address range
  @BuiltValueField(wireName: r'addressRange')
  String? get addressRange;

  /// 0 - SMSC Default Alphabet (ASCII for short and long code and to GSM for toll-free, used as default) 1 - IA5 (ASCII for short and long code, Latin 9 for toll-free (ISO-8859-9)) 2 - Octet Unspecified (8-bit binary) 3 - Latin 1 (ISO-8859-1) 4 - Octet Unspecified (8-bit binary) 5 - JIS (X 0208-1990) 6 - Cyrillic (ISO-8859-5) 7 - Latin/Hebrew (ISO-8859-8) 8 - UCS2/UTF-16 (ISO/IEC-10646) 9 - Pictogram Encoding 10 - Music Codes (ISO-2022-JP) 13 - Extended Kanji JIS (X 0212-1990) 14 - Korean Graphic Character Set (KS C 5601/KS X 1001)
  @BuiltValueField(wireName: r'codingScheme')
  String? get codingScheme;

  /// Destination TON (Type of Number). 5 by default. 0 - Unknown 1 - International 2 - National 3 - Network Specific 4 - Subscriber Number 5 - Alphanumeric 6 - Abbreviated
  @BuiltValueField(wireName: r'destinationTon')
  String? get destinationTon;

  /// Password
  @BuiltValueField(wireName: r'password')
  String get password;

  /// Destination NPI (Numbering Plan Identification). 0 by default. 0 - Unknown 1 - ISDN/telephone numbering plan (E163/E164) 3 - Data numbering plan (X.121) 4 - Telex numbering plan (F.69) 6 - Land Mobile (E.212) =6 8 - National numbering plan 9 - Private numbering plan 10 - ERMES numbering plan (ETSI DE/PS 3 01-3) 13 - Internet (IP) 18 - WAP Client Id (to be defined by WAP Forum)
  @BuiltValueField(wireName: r'destinationNpi')
  String? get destinationNpi;

  /// SMPP port
  @BuiltValueField(wireName: r'port')
  int get port;

  /// SMPP host
  @BuiltValueField(wireName: r'host')
  String get host;

  /// System type
  @BuiltValueField(wireName: r'systemType')
  String? get systemType;

  /// SMPP version
  @BuiltValueField(wireName: r'protocolVersion')
  SmppSmsProviderConfigurationProtocolVersionEnum get protocolVersion;
  // enum protocolVersionEnum {  3.3, 3.4,  };

  /// Source TON (Type of Number). Needed is source address is set. 5 by default. 0 - Unknown 1 - International 2 - National 3 - Network Specific 4 - Subscriber Number 5 - Alphanumeric 6 - Abbreviated
  @BuiltValueField(wireName: r'sourceTon')
  String? get sourceTon;

  SmppSmsProviderConfiguration._();

  factory SmppSmsProviderConfiguration([
    void updates(SmppSmsProviderConfigurationBuilder b),
  ]) = _$SmppSmsProviderConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmppSmsProviderConfigurationBuilder b) =>
      b..type = r'SMPP';

  @BuiltValueSerializer(custom: true)
  static Serializer<SmppSmsProviderConfiguration> get serializer =>
      _$SmppSmsProviderConfigurationSerializer();
}

class _$SmppSmsProviderConfigurationSerializer
    implements PrimitiveSerializer<SmppSmsProviderConfiguration> {
  @override
  final Iterable<Type> types = const [
    SmppSmsProviderConfiguration,
    _$SmppSmsProviderConfiguration,
  ];

  @override
  final String wireName = r'SmppSmsProviderConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmppSmsProviderConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.serviceType != null) {
      yield r'serviceType';
      yield serializers.serialize(
        object.serviceType,
        specifiedType: const FullType(String),
      );
    }
    yield r'systemId';
    yield serializers.serialize(
      object.systemId,
      specifiedType: const FullType(String),
    );
    if (object.sourceAddress != null) {
      yield r'sourceAddress';
      yield serializers.serialize(
        object.sourceAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.bindType != null) {
      yield r'bindType';
      yield serializers.serialize(
        object.bindType,
        specifiedType: const FullType(SmppBindType),
      );
    }
    if (object.sourceNpi != null) {
      yield r'sourceNpi';
      yield serializers.serialize(
        object.sourceNpi,
        specifiedType: const FullType(String),
      );
    }
    if (object.addressRange != null) {
      yield r'addressRange';
      yield serializers.serialize(
        object.addressRange,
        specifiedType: const FullType(String),
      );
    }
    if (object.codingScheme != null) {
      yield r'codingScheme';
      yield serializers.serialize(
        object.codingScheme,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.destinationTon != null) {
      yield r'destinationTon';
      yield serializers.serialize(
        object.destinationTon,
        specifiedType: const FullType(String),
      );
    }
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    if (object.destinationNpi != null) {
      yield r'destinationNpi';
      yield serializers.serialize(
        object.destinationNpi,
        specifiedType: const FullType(String),
      );
    }
    yield r'port';
    yield serializers.serialize(
      object.port,
      specifiedType: const FullType(int),
    );
    yield r'host';
    yield serializers.serialize(
      object.host,
      specifiedType: const FullType(String),
    );
    if (object.systemType != null) {
      yield r'systemType';
      yield serializers.serialize(
        object.systemType,
        specifiedType: const FullType(String),
      );
    }
    yield r'protocolVersion';
    yield serializers.serialize(
      object.protocolVersion,
      specifiedType: const FullType(
        SmppSmsProviderConfigurationProtocolVersionEnum,
      ),
    );
    if (object.sourceTon != null) {
      yield r'sourceTon';
      yield serializers.serialize(
        object.sourceTon,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SmppSmsProviderConfiguration object, {
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
    required SmppSmsProviderConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'serviceType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.serviceType = valueDes;
          break;
        case r'systemId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.systemId = valueDes;
          break;
        case r'sourceAddress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceAddress = valueDes;
          break;
        case r'bindType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SmppBindType),
                  )
                  as SmppBindType?;
          if (valueDes == null) continue;
          result.bindType = valueDes;
          break;
        case r'sourceNpi':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceNpi = valueDes;
          break;
        case r'addressRange':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.addressRange = valueDes;
          break;
        case r'codingScheme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.codingScheme = valueDes;
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
        case r'destinationTon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.destinationTon = valueDes;
          break;
        case r'password':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.password = valueDes;
          break;
        case r'destinationNpi':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.destinationNpi = valueDes;
          break;
        case r'port':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.port = valueDes;
          break;
        case r'host':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.host = valueDes;
          break;
        case r'systemType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.systemType = valueDes;
          break;
        case r'protocolVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SmppSmsProviderConfigurationProtocolVersionEnum,
                    ),
                  )
                  as SmppSmsProviderConfigurationProtocolVersionEnum;
          result.protocolVersion = valueDes;
          break;
        case r'sourceTon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceTon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SmppSmsProviderConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmppSmsProviderConfigurationBuilder();
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

/// SMPP version
class SmppSmsProviderConfigurationProtocolVersionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'3.3, 3.4')
  static const SmppSmsProviderConfigurationProtocolVersionEnum
  n3period3Comma3Period4 =
      _$smppSmsProviderConfigurationProtocolVersionEnum_n3period3Comma3Period4;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SmppSmsProviderConfigurationProtocolVersionEnum
  unknownDefaultOpenApi =
      _$smppSmsProviderConfigurationProtocolVersionEnum_unknownDefaultOpenApi;

  static Serializer<SmppSmsProviderConfigurationProtocolVersionEnum>
  get serializer => _$smppSmsProviderConfigurationProtocolVersionEnumSerializer;

  const SmppSmsProviderConfigurationProtocolVersionEnum._(String name)
    : super(name);

  static BuiltSet<SmppSmsProviderConfigurationProtocolVersionEnum> get values =>
      _$smppSmsProviderConfigurationProtocolVersionEnumValues;
  static SmppSmsProviderConfigurationProtocolVersionEnum valueOf(String name) =>
      _$smppSmsProviderConfigurationProtocolVersionEnumValueOf(name);
}
