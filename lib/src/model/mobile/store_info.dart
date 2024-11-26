class StoreInfo {
  const StoreInfo({
    required this.appId,
    required this.sha256CertFingerprints,
    required this.storeLink,
  });

  factory StoreInfo.fromJson(Map<String, dynamic> json) {
    return StoreInfo(
      appId: json['appId'],
      sha256CertFingerprints: json['sha256CertFingerprints'],
      storeLink: json['storeLink'],
    );
  }

  final String? appId;
  final String? sha256CertFingerprints;
  final String? storeLink;
}
