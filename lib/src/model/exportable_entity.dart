import 'model.dart';

abstract class ExportableEntity<I extends EntityId> {
  void setId(I? id);

  I? getExternalId();

  void setExternalId(I? externalId);

  int? getCreatedTime();

  void setCreatedTime(int? createdTime);

  void setTenantId(TenantId? tenantId);

  String getName();

  factory ExportableEntity.fromTypeAndJson(
      EntityType entityType, Map<String, dynamic> json) {
    switch (entityType) {
      case EntityType.CUSTOMER:
        return Customer.fromJson(json) as ExportableEntity<I>;
      case EntityType.DASHBOARD:
        return Dashboard.fromJson(json) as ExportableEntity<I>;
      case EntityType.ASSET:
        return Asset.fromJson(json) as ExportableEntity<I>;
      case EntityType.DEVICE:
        return Device.fromJson(json) as ExportableEntity<I>;
      case EntityType.DEVICE_PROFILE:
        return DeviceProfile.fromJson(json) as ExportableEntity<I>;
      case EntityType.RULE_CHAIN:
        return RuleChain.fromJson(json) as ExportableEntity<I>;
      case EntityType.ENTITY_VIEW:
        return EntityView.fromJson(json) as ExportableEntity<I>;
      case EntityType.WIDGETS_BUNDLE:
        return WidgetsBundle.fromJson(json) as ExportableEntity<I>;
      default:
        throw FormatException('Not exportable entity type: $entityType!');
    }
  }
}
