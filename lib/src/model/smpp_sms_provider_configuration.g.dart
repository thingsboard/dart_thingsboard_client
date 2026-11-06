// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smpp_sms_provider_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SmppSmsProviderConfigurationProtocolVersionEnum
_$smppSmsProviderConfigurationProtocolVersionEnum_n3period3Comma3Period4 =
    const SmppSmsProviderConfigurationProtocolVersionEnum._(
      'n3period3Comma3Period4',
    );
const SmppSmsProviderConfigurationProtocolVersionEnum
_$smppSmsProviderConfigurationProtocolVersionEnum_unknownDefaultOpenApi =
    const SmppSmsProviderConfigurationProtocolVersionEnum._(
      'unknownDefaultOpenApi',
    );

SmppSmsProviderConfigurationProtocolVersionEnum
_$smppSmsProviderConfigurationProtocolVersionEnumValueOf(String name) {
  switch (name) {
    case 'n3period3Comma3Period4':
      return _$smppSmsProviderConfigurationProtocolVersionEnum_n3period3Comma3Period4;
    case 'unknownDefaultOpenApi':
      return _$smppSmsProviderConfigurationProtocolVersionEnum_unknownDefaultOpenApi;
    default:
      return _$smppSmsProviderConfigurationProtocolVersionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SmppSmsProviderConfigurationProtocolVersionEnum>
_$smppSmsProviderConfigurationProtocolVersionEnumValues =
    BuiltSet<SmppSmsProviderConfigurationProtocolVersionEnum>(const <
      SmppSmsProviderConfigurationProtocolVersionEnum
    >[
      _$smppSmsProviderConfigurationProtocolVersionEnum_n3period3Comma3Period4,
      _$smppSmsProviderConfigurationProtocolVersionEnum_unknownDefaultOpenApi,
    ]);

Serializer<SmppSmsProviderConfigurationProtocolVersionEnum>
_$smppSmsProviderConfigurationProtocolVersionEnumSerializer =
    _$SmppSmsProviderConfigurationProtocolVersionEnumSerializer();

class _$SmppSmsProviderConfigurationProtocolVersionEnumSerializer
    implements
        PrimitiveSerializer<SmppSmsProviderConfigurationProtocolVersionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n3period3Comma3Period4': '3.3, 3.4',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '3.3, 3.4': 'n3period3Comma3Period4',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SmppSmsProviderConfigurationProtocolVersionEnum,
  ];
  @override
  final String wireName = 'SmppSmsProviderConfigurationProtocolVersionEnum';

  @override
  Object serialize(
    Serializers serializers,
    SmppSmsProviderConfigurationProtocolVersionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SmppSmsProviderConfigurationProtocolVersionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SmppSmsProviderConfigurationProtocolVersionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SmppSmsProviderConfiguration extends SmppSmsProviderConfiguration {
  @override
  final String? serviceType;
  @override
  final String systemId;
  @override
  final String? sourceAddress;
  @override
  final SmppBindType? bindType;
  @override
  final String? sourceNpi;
  @override
  final String? addressRange;
  @override
  final String? codingScheme;
  @override
  final String? destinationTon;
  @override
  final String password;
  @override
  final String? destinationNpi;
  @override
  final int port;
  @override
  final String host;
  @override
  final String? systemType;
  @override
  final SmppSmsProviderConfigurationProtocolVersionEnum protocolVersion;
  @override
  final String? sourceTon;
  @override
  final String type;

  factory _$SmppSmsProviderConfiguration([
    void Function(SmppSmsProviderConfigurationBuilder)? updates,
  ]) => (SmppSmsProviderConfigurationBuilder()..update(updates))._build();

  _$SmppSmsProviderConfiguration._({
    this.serviceType,
    required this.systemId,
    this.sourceAddress,
    this.bindType,
    this.sourceNpi,
    this.addressRange,
    this.codingScheme,
    this.destinationTon,
    required this.password,
    this.destinationNpi,
    required this.port,
    required this.host,
    this.systemType,
    required this.protocolVersion,
    this.sourceTon,
    required this.type,
  }) : super._();
  @override
  SmppSmsProviderConfiguration rebuild(
    void Function(SmppSmsProviderConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SmppSmsProviderConfigurationBuilder toBuilder() =>
      SmppSmsProviderConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmppSmsProviderConfiguration &&
        serviceType == other.serviceType &&
        systemId == other.systemId &&
        sourceAddress == other.sourceAddress &&
        bindType == other.bindType &&
        sourceNpi == other.sourceNpi &&
        addressRange == other.addressRange &&
        codingScheme == other.codingScheme &&
        destinationTon == other.destinationTon &&
        password == other.password &&
        destinationNpi == other.destinationNpi &&
        port == other.port &&
        host == other.host &&
        systemType == other.systemType &&
        protocolVersion == other.protocolVersion &&
        sourceTon == other.sourceTon &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jc(_$hash, systemId.hashCode);
    _$hash = $jc(_$hash, sourceAddress.hashCode);
    _$hash = $jc(_$hash, bindType.hashCode);
    _$hash = $jc(_$hash, sourceNpi.hashCode);
    _$hash = $jc(_$hash, addressRange.hashCode);
    _$hash = $jc(_$hash, codingScheme.hashCode);
    _$hash = $jc(_$hash, destinationTon.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, destinationNpi.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, systemType.hashCode);
    _$hash = $jc(_$hash, protocolVersion.hashCode);
    _$hash = $jc(_$hash, sourceTon.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SmppSmsProviderConfiguration')
          ..add('serviceType', serviceType)
          ..add('systemId', systemId)
          ..add('sourceAddress', sourceAddress)
          ..add('bindType', bindType)
          ..add('sourceNpi', sourceNpi)
          ..add('addressRange', addressRange)
          ..add('codingScheme', codingScheme)
          ..add('destinationTon', destinationTon)
          ..add('password', password)
          ..add('destinationNpi', destinationNpi)
          ..add('port', port)
          ..add('host', host)
          ..add('systemType', systemType)
          ..add('protocolVersion', protocolVersion)
          ..add('sourceTon', sourceTon)
          ..add('type', type))
        .toString();
  }
}

class SmppSmsProviderConfigurationBuilder
    implements
        Builder<
          SmppSmsProviderConfiguration,
          SmppSmsProviderConfigurationBuilder
        >,
        SmsProviderConfigurationBuilder {
  _$SmppSmsProviderConfiguration? _$v;

  String? _serviceType;
  String? get serviceType => _$this._serviceType;
  set serviceType(covariant String? serviceType) =>
      _$this._serviceType = serviceType;

  String? _systemId;
  String? get systemId => _$this._systemId;
  set systemId(covariant String? systemId) => _$this._systemId = systemId;

  String? _sourceAddress;
  String? get sourceAddress => _$this._sourceAddress;
  set sourceAddress(covariant String? sourceAddress) =>
      _$this._sourceAddress = sourceAddress;

  SmppBindType? _bindType;
  SmppBindType? get bindType => _$this._bindType;
  set bindType(covariant SmppBindType? bindType) => _$this._bindType = bindType;

  String? _sourceNpi;
  String? get sourceNpi => _$this._sourceNpi;
  set sourceNpi(covariant String? sourceNpi) => _$this._sourceNpi = sourceNpi;

  String? _addressRange;
  String? get addressRange => _$this._addressRange;
  set addressRange(covariant String? addressRange) =>
      _$this._addressRange = addressRange;

  String? _codingScheme;
  String? get codingScheme => _$this._codingScheme;
  set codingScheme(covariant String? codingScheme) =>
      _$this._codingScheme = codingScheme;

  String? _destinationTon;
  String? get destinationTon => _$this._destinationTon;
  set destinationTon(covariant String? destinationTon) =>
      _$this._destinationTon = destinationTon;

  String? _password;
  String? get password => _$this._password;
  set password(covariant String? password) => _$this._password = password;

  String? _destinationNpi;
  String? get destinationNpi => _$this._destinationNpi;
  set destinationNpi(covariant String? destinationNpi) =>
      _$this._destinationNpi = destinationNpi;

  int? _port;
  int? get port => _$this._port;
  set port(covariant int? port) => _$this._port = port;

  String? _host;
  String? get host => _$this._host;
  set host(covariant String? host) => _$this._host = host;

  String? _systemType;
  String? get systemType => _$this._systemType;
  set systemType(covariant String? systemType) =>
      _$this._systemType = systemType;

  SmppSmsProviderConfigurationProtocolVersionEnum? _protocolVersion;
  SmppSmsProviderConfigurationProtocolVersionEnum? get protocolVersion =>
      _$this._protocolVersion;
  set protocolVersion(
    covariant SmppSmsProviderConfigurationProtocolVersionEnum? protocolVersion,
  ) => _$this._protocolVersion = protocolVersion;

  String? _sourceTon;
  String? get sourceTon => _$this._sourceTon;
  set sourceTon(covariant String? sourceTon) => _$this._sourceTon = sourceTon;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  SmppSmsProviderConfigurationBuilder() {
    SmppSmsProviderConfiguration._defaults(this);
  }

  SmppSmsProviderConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceType = $v.serviceType;
      _systemId = $v.systemId;
      _sourceAddress = $v.sourceAddress;
      _bindType = $v.bindType;
      _sourceNpi = $v.sourceNpi;
      _addressRange = $v.addressRange;
      _codingScheme = $v.codingScheme;
      _destinationTon = $v.destinationTon;
      _password = $v.password;
      _destinationNpi = $v.destinationNpi;
      _port = $v.port;
      _host = $v.host;
      _systemType = $v.systemType;
      _protocolVersion = $v.protocolVersion;
      _sourceTon = $v.sourceTon;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SmppSmsProviderConfiguration other) {
    _$v = other as _$SmppSmsProviderConfiguration;
  }

  @override
  void update(void Function(SmppSmsProviderConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SmppSmsProviderConfiguration build() => _build();

  _$SmppSmsProviderConfiguration _build() {
    final _$result =
        _$v ??
        _$SmppSmsProviderConfiguration._(
          serviceType: serviceType,
          systemId: BuiltValueNullFieldError.checkNotNull(
            systemId,
            r'SmppSmsProviderConfiguration',
            'systemId',
          ),
          sourceAddress: sourceAddress,
          bindType: bindType,
          sourceNpi: sourceNpi,
          addressRange: addressRange,
          codingScheme: codingScheme,
          destinationTon: destinationTon,
          password: BuiltValueNullFieldError.checkNotNull(
            password,
            r'SmppSmsProviderConfiguration',
            'password',
          ),
          destinationNpi: destinationNpi,
          port: BuiltValueNullFieldError.checkNotNull(
            port,
            r'SmppSmsProviderConfiguration',
            'port',
          ),
          host: BuiltValueNullFieldError.checkNotNull(
            host,
            r'SmppSmsProviderConfiguration',
            'host',
          ),
          systemType: systemType,
          protocolVersion: BuiltValueNullFieldError.checkNotNull(
            protocolVersion,
            r'SmppSmsProviderConfiguration',
            'protocolVersion',
          ),
          sourceTon: sourceTon,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'SmppSmsProviderConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
