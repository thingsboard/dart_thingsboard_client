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

class ComponentDescriptor extends BaseData<ComponentDescriptorId> {
  ComponentType type;
  ComponentScope scope;
  String name;
  String clazz;
  Map<String, dynamic>? configurationDescriptor;
  String? actions;

  ComponentDescriptor.fromJson(Map<String, dynamic> json)
      : type = componentTypeFromString(json['type']),
        scope = componentScopeFromString(json['scope']),
        name = json['name'],
        clazz = json['clazz'],
        configurationDescriptor = json['configurationDescriptor'],
        actions = json['actions'],
        super.fromJson(json, (id) => ComponentDescriptorId(id));

  @override
  String toString() {
    return 'ComponentDescriptor{${baseDataString('type: $type, scope: $scope, name: $name, clazz: $clazz, configurationDescriptor: $configurationDescriptor, actions: $actions')}}';
  }
}
