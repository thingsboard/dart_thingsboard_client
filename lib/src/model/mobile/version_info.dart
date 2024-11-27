import 'package:thingsboard_client/src/model/model.dart' show PlatformVersion;

class VersionInfo {
  const VersionInfo({
    required this.minVersion,
    required this.minVersionReleaseNotes,
    required this.latestVersion,
    required this.latestVersionReleaseNotes,
  });

  factory VersionInfo.fromJson(Map<String, dynamic> json) {
    return VersionInfo(
      minVersion: json['minVersion'] != ''
          ? PlatformVersion.fromString(json['minVersion'])
          : null,
      minVersionReleaseNotes: json['minVersionReleaseNotes'],
      latestVersion: json['latestVersion'] != ''
          ? PlatformVersion.fromString(json['latestVersion'])
          : null,
      latestVersionReleaseNotes: json['latestVersionReleaseNotes'],
    );
  }

  final PlatformVersion? minVersion;
  final String minVersionReleaseNotes;
  final PlatformVersion? latestVersion;
  final String latestVersionReleaseNotes;
}
