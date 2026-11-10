// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Fields the server sends as null although the spec used to list them as
// required (fixed on the server in thingsboard/thingsboard#16613): bean
// validation (@NotNull, @NotBlank, @NotEmpty) only checks saved input, and some
// explicit requiredMode = REQUIRED did not match the responses. A spec that
// lists them as required again fails here.
import 'package:built_value/serializer.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

const _uuid = '784f394c-42b6-435a-983c-b7beff2784f9';

Map<String, Object?> _id(String entityType) => {
  'entityType': entityType,
  'id': _uuid,
};

class _Case {
  const _Case(this.field, this.type, this.json, this.read);

  final String field;
  final FullType type;
  final Map<String, Object?> json;
  final Object? Function(Object model) read;
}

const _edge = {
  'name': 'edge',
  'type': 'default',
  'routingKey': 'key',
  'secret': 'secret',
  'cloudEndpoint': 'http://localhost:8080',
};

const _report = {'name': 'report', 'format': 'PDF'};

const _dashboardReport = {
  'dashboardId': _uuid,
  'baseUrl': 'http://localhost:8080',
  'timezone': 'UTC',
};

final _cases = <_Case>[
  // POST /api/2fa/account/config/generate?providerType=SMS
  _Case(
    'SmsTwoFaAccountConfig.phoneNumber',
    const FullType(TwoFaAccountConfig),
    {'providerType': 'SMS', 'useByDefault': false, 'phoneNumber': null},
    (m) => (m as SmsTwoFaAccountConfig).phoneNumber,
  ),
  // GET /api/2fa/account/settings: the codes are hidden
  _Case(
    'BackupCodeTwoFaAccountConfig.codes',
    const FullType(TwoFaAccountConfig),
    {
      'providerType': 'BACKUP_CODE',
      'useByDefault': false,
      'codes': null,
      'codesLeft': 10,
    },
    (m) => (m as BackupCodeTwoFaAccountConfig).codes,
  ),
  // The license key is cleared for users without edge write permission
  _Case('Edge.edgeLicenseKey', const FullType(Edge), {
    ..._edge,
    'edgeLicenseKey': null,
  }, (m) => (m as Edge).edgeLicenseKey),
  _Case('EdgeInfo.edgeLicenseKey', const FullType(EdgeInfo), {
    ..._edge,
    'edgeLicenseKey': null,
  }, (m) => (m as EdgeInfo).edgeLicenseKey),
  // The metadata of a new rule chain; ruleChainConnections is never set
  _Case('RuleChainMetaData.connections', const FullType(RuleChainMetaData), {
    'ruleChainId': _id('RULE_CHAIN'),
    'nodes': [],
    'connections': null,
  }, (m) => (m as RuleChainMetaData).connections),
  _Case('RuleChainMetaData.firstNodeIndex', const FullType(RuleChainMetaData), {
    'ruleChainId': _id('RULE_CHAIN'),
    'nodes': [],
    'firstNodeIndex': null,
  }, (m) => (m as RuleChainMetaData).firstNodeIndex),
  _Case(
    'RuleChainMetaData.ruleChainConnections',
    const FullType(RuleChainMetaData),
    {
      'ruleChainId': _id('RULE_CHAIN'),
      'nodes': [],
      'ruleChainConnections': null,
    },
    (m) => (m as RuleChainMetaData).ruleChainConnections,
  ),
  // A user group has no "name" column by default
  _Case('ShortEntityView.name', const FullType(ShortEntityView), {
    'id': _id('USER'),
    'name': null,
  }, (m) => (m as ShortEntityView).name),
  // Self-registration permissions get their user group at sign-up
  _Case('GroupPermission.userGroupId', const FullType(GroupPermission), {
    'roleId': _id('ROLE'),
    'userGroupId': null,
  }, (m) => (m as GroupPermission).userGroupId),
  _Case(
    'GroupPermissionInfo.userGroupId',
    const FullType(GroupPermissionInfo),
    {'roleId': _id('ROLE'), 'userGroupId': null},
    (m) => (m as GroupPermissionInfo).userGroupId,
  ),
  // The report template was deleted (ON DELETE SET NULL)
  _Case('Report.templateId', const FullType(Report), {
    ..._report,
    'tenantId': _id('TENANT'),
    'userId': _id('USER'),
    'templateId': null,
  }, (m) => (m as Report).templateId),
  _Case('ReportInfo.templateId', const FullType(ReportInfo), {
    ..._report,
    'tenantId': _id('TENANT'),
    'userId': _id('USER'),
    'templateId': null,
  }, (m) => (m as ReportInfo).templateId),
  // Only chart components have a subtype
  _Case('ReportComponent.subType', const FullType(ReportComponent), {
    'type': 'HEADING',
    'subType': null,
  }, (m) => (m as ReportComponent).subType),
  // A dashboard component of a PDF report template
  _Case(
    'DashboardReportConfig.namePattern',
    const FullType(DashboardReportConfig),
    {..._dashboardReport, 'namePattern': null},
    (m) => (m as DashboardReportConfig).namePattern,
  ),
  _Case('DashboardReportConfig.userId', const FullType(DashboardReportConfig), {
    ..._dashboardReport,
    'userId': null,
  }, (m) => (m as DashboardReportConfig).userId),
  // An application without a profile
  _Case('AgentApplication.templateVersion', const FullType(AgentApplication), {
    'agentId': _id('AGENT'),
    'appType': 'GENERIC',
    'templateVersion': null,
  }, (m) => (m as AgentApplication).templateVersion),
  _Case(
    'AgentApplicationInfo.templateVersion',
    const FullType(AgentApplicationInfo),
    {'agentId': _id('AGENT'), 'appType': 'GENERIC', 'templateVersion': null},
    (m) => (m as AgentApplicationInfo).templateVersion,
  ),
  // An entity view saved from the UI without touching its key lists
  _Case('TelemetryEntityView.timeseries', const FullType(TelemetryEntityView), {
    'timeseries': null,
  }, (m) => (m as TelemetryEntityView).timeseries),
  _Case('AttributesEntityView.cs', const FullType(AttributesEntityView), {
    'cs': null,
  }, (m) => (m as AttributesEntityView).cs),
  _Case('AttributesEntityView.ss', const FullType(AttributesEntityView), {
    'ss': null,
  }, (m) => (m as AttributesEntityView).ss),
  _Case('AttributesEntityView.sh', const FullType(AttributesEntityView), {
    'sh': null,
  }, (m) => (m as AttributesEntityView).sh),
];

void main() {
  for (final c in _cases) {
    test('${c.field} may be null', () {
      final model = standardSerializers.deserialize(
        c.json,
        specifiedType: c.type,
      )!;
      expect(c.read(model), isNull);
    });

    final omitted = Map.of(c.json)..remove(c.field.split('.').last);
    test('${c.field} may be omitted', () {
      final model = standardSerializers.deserialize(
        omitted,
        specifiedType: c.type,
      )!;
      expect(c.read(model), isNull);
    });
  }

  test('the 2FA account settings of a user with backup codes', () {
    final settings =
        standardSerializers.deserialize({
              'configs': {
                'BACKUP_CODE': {
                  'providerType': 'BACKUP_CODE',
                  'useByDefault': false,
                  'codes': null,
                  'codesLeft': 10,
                },
              },
            }, specifiedType: const FullType(AccountTwoFaSettings))!
            as AccountTwoFaSettings;

    final config = settings.configs!['BACKUP_CODE']!;
    expect(config, isA<BackupCodeTwoFaAccountConfig>());
    expect((config as BackupCodeTwoFaAccountConfig).codes, isNull);
    expect(config.codesLeft, 10);
  });

  test('an entity view saved without key lists', () {
    final view =
        standardSerializers.deserialize({
              'name': 'view',
              'type': 'default',
              'entityId': _id('DEVICE'),
              'keys': {
                'timeseries': null,
                'attributes': {'cs': null, 'sh': null, 'ss': null},
              },
            }, specifiedType: const FullType(EntityView))!
            as EntityView;

    expect(view.keys!.timeseries, isNull);
    expect(view.keys!.attributes.cs, isNull);
  });
}
