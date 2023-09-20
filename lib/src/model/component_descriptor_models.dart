import 'base_data.dart';
import 'id/component_descriptor_id.dart';

enum ComponentType { ENRICHMENT, FILTER, TRANSFORMATION, ACTION, EXTERNAL }

ComponentType componentTypeFromString(String value) {
  return ComponentType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ComponentTypeToString on ComponentType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum ComponentScope { SYSTEM, TENANT }

ComponentScope componentScopeFromString(String value) {
  return ComponentScope.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ComponentScopeToString on ComponentScope {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum ComponentClusteringMode { USER_PREFERENCE, ENABLED, SINGLETON }

ComponentClusteringMode componentClusteringModeFromString(String value) {
  return ComponentClusteringMode.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ComponentClusteringModeToString on ComponentClusteringMode {
  String toShortString() {
    return toString().split('.').last;
  }
}

class ComponentDescriptor extends BaseData<ComponentDescriptorId> {
  ComponentType type;
  ComponentScope scope;
  final ComponentClusteringMode clusteringMode;
  String name;
  String clazz;
  Map<String, dynamic>? configurationDescriptor;
  final int configurationVersion;
  String? actions;

  ComponentDescriptor.fromJson(Map<String, dynamic> json)
      : type = componentTypeFromString(json['type']),
        scope = componentScopeFromString(json['scope']),
        clusteringMode =
            componentClusteringModeFromString(json['clusteringMode']),
        name = json['name'],
        clazz = json['clazz'],
        configurationDescriptor = json['configurationDescriptor'],
        configurationVersion = json['configurationVersion'],
        actions = json['actions'],
        super.fromJson(json, (id) => ComponentDescriptorId(id));

  @override
  String toString() {
    return 'ComponentDescriptor{${baseDataString('type: $type, scope: $scope, name: $name, clusteringMode: $clusteringMode, '
        'clazz: $clazz, configurationDescriptor: $configurationDescriptor, '
        'configurationVersion: $configurationVersion, actions: $actions')}}';
  }
}
