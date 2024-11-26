import 'mobile_models.dart' show StoreInfo, MobileVersionInfo;

class VersionInfo {
  const VersionInfo({required this.storeInfo, required this.mobileVersionInfo});

  factory VersionInfo.fromJson(Map<String, dynamic> json) {
    return VersionInfo(
      storeInfo: json['storeInfo'] != null
          ? StoreInfo.fromJson(json['storeInfo'])
          : null,
      mobileVersionInfo: json['mobileAppVersionInfo'] != null
          ? MobileVersionInfo.fromJson(json['mobileAppVersionInfo'])
          : null,
    );
  }

  final StoreInfo? storeInfo;
  final MobileVersionInfo? mobileVersionInfo;
}
