import 'package:thingsboard_client/thingsboard_client.dart'
    show PlatformType, PlatformTypeToString;
/// Internal class
class MobileInfoQuery {
  const MobileInfoQuery({
    required this.packageName,
    required this.platformType,
  });

  final String packageName;
  final PlatformType platformType;

  Map<String, dynamic> toQueryParameters() {
    return {
      'pkgName': packageName,
      'platform': platformType.toShortString(),
    };
  }
}
