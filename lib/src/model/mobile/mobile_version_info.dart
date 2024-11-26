import 'package:thingsboard_pe_client/src/model/model.dart'
    show PlatformVersion;

class MobileVersionInfo {
  const MobileVersionInfo({
    required this.minVersion,
    required this.minVersionReleaseNotes,
    required this.latestVersion,
    required this.latestVersionReleaseNotes,
  });

  factory MobileVersionInfo.fromJson(Map<String, dynamic> json) {
    return MobileVersionInfo(
      minVersion: PlatformVersion.fromString(json['minVersion']),
      minVersionReleaseNotes: json['minVersionReleaseNotes'],
      latestVersion: PlatformVersion.fromString(json['latestVersion']),
      latestVersionReleaseNotes: json['latestVersionReleaseNotes'],
    );
  }

  final PlatformVersion minVersion;
  final String minVersionReleaseNotes;
  final PlatformVersion latestVersion;
  final String latestVersionReleaseNotes;
}
