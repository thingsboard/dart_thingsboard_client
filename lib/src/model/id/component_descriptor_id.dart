import 'has_uuid.dart';

class ComponentDescriptorId extends HasUuid {
  ComponentDescriptorId(String? id) : super(id);

  @override
  factory ComponentDescriptorId.fromJson(Map<String, dynamic> json) {
    return HasUuid.fromJson(json, (id) => ComponentDescriptorId(id))
        as ComponentDescriptorId;
  }

  @override
  String toString() {
    return 'ComponentDescriptorId {id: $id}';
  }
}
