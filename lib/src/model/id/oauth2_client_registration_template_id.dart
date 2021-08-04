import 'has_uuid.dart';

class OAuth2ClientRegistrationTemplateId extends HasUuid {
  OAuth2ClientRegistrationTemplateId(String? id) : super(id);

  @override
  factory OAuth2ClientRegistrationTemplateId.fromJson(
      Map<String, dynamic> json) {
    return HasUuid.fromJson(
            json, (id) => OAuth2ClientRegistrationTemplateId(id))
        as OAuth2ClientRegistrationTemplateId;
  }

  @override
  String toString() {
    return 'OAuth2ClientRegistrationTemplateId {id: $id}';
  }
}
