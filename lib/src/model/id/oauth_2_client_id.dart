import 'package:thingsboard_client/thingsboard_client.dart';

class Oauth2ClientId extends EntityId {
  Oauth2ClientId(String id) : super(EntityType.OAUTH2_CLIENT, id);

  @override
  factory Oauth2ClientId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as Oauth2ClientId;
  }

  @override
  String toString() {
    return 'EntityViewId {id: $id}';
  }
}
