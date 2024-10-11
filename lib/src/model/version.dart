class PlatformVersionMatcher {
  static const int minPlatformVersionInt = 3800;

  static bool isSupportedPlatformVersion(PlatformVersion platformVersion) {
    try {
      if (platformVersion.versionInt() < minPlatformVersionInt) {
        return false;
      }
    } catch (e) {
      return false;
    }
    return true;
  }
}

class PlatformVersion {
  static RegExp versionRegExp = new RegExp(r"([\d|.]+)([A-Z]*)(-SNAPSHOT)?");

  int major;
  int minor;
  int patch;
  int? minorPatch;
  String? versionCode;
  bool isSnapshot;

  PlatformVersion(
      {required this.major,
      required this.minor,
      required this.patch,
      this.minorPatch,
      this.versionCode,
      this.isSnapshot = false});

  factory PlatformVersion.fromString(String version) {
    RegExpMatch? match = versionRegExp.firstMatch(version);
    if (match != null) {
      String? versionStr = match.group(1);
      if (versionStr != null) {
        List<String> versionParts = versionStr.split(".");
        if (versionParts.length >= 3) {
          int major = int.parse(versionParts[0]);
          int minor = int.parse(versionParts[1]);
          int patch = int.parse(versionParts[2]);
          int? minorPatch;
          if (versionParts.length > 3) {
            minorPatch = int.parse(versionParts[3]);
          }
          String? versionCode = match.group(2);
          bool isSnapshot = match.group(3) != null;
          return PlatformVersion(
              major: major,
              minor: minor,
              patch: patch,
              minorPatch: minorPatch,
              versionCode: versionCode,
              isSnapshot: isSnapshot);
        }
      }
    }
    throw ArgumentError("Invalid platform version string: $version");
  }

  int versionInt() {
    return this.major * 1000 +
        this.minor * 100 +
        this.patch * 10 +
        (this.minorPatch != null ? this.minorPatch! : 0);
  }

  String versionString() {
    String version = "$major.$minor.$patch";
    if (this.minorPatch != null) {
      version += ".$minorPatch";
    }
    if (versionCode != null && versionCode!.isNotEmpty) {
      version += "$versionCode";
    }
    if (isSnapshot) {
      version += "-SNAPSHOT";
    }
    return version;
  }

  @override
  String toString() {
    return versionString();
  }
}
