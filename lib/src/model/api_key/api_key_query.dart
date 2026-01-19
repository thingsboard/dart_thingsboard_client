import 'package:thingsboard_client/src/model/model.dart';

class ApiKeyQuery {
  final String userId;
  final PageLink pageLink;

  ApiKeyQuery({required this.userId, required this.pageLink});
}
