import 'package:thingsboard_client/thingsboard_client.dart';
/// Internal class
class MobileBasicInfo {
  const MobileBasicInfo({
    required this.user,
    required this.homeDashboardInfo,
    required this.pages,
    required this.versionInfo,
    required this.storeInfo,
  });

  factory MobileBasicInfo.fromJson(Map<String, dynamic> json) {
    return MobileBasicInfo(
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      homeDashboardInfo: json['homeDashboardInfo'] != null
          ? HomeDashboardInfo.fromJson(json['homeDashboardInfo'])
          : null,
      pages: json['pages'] != null
          ? json['pages']
              .map<PageLayout>((e) => PageLayout.fromJson(e))
              .toList()
          : null,
      storeInfo: json['storeInfo'] != null
          ? StoreInfo.fromJson(json['storeInfo'])
          : null,
      versionInfo: json['versionInfo'] != null
          ? VersionInfo.fromJson(json['versionInfo'])
          : null,
    );
  }

  final User? user;
  final HomeDashboardInfo? homeDashboardInfo;
  final List<PageLayout>? pages;
  final StoreInfo? storeInfo;
  final VersionInfo? versionInfo;
}
