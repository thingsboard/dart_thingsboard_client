class MobileSessionInfo {
  int fcmTokenTimestamp;

  MobileSessionInfo(this.fcmTokenTimestamp);

  MobileSessionInfo.fromJson(Map<String, dynamic> json)
      : fcmTokenTimestamp = json['fcmTokenTimestamp'];

  Map<String, dynamic> toJson() {
    return {
      'fcmTokenTimestamp': fcmTokenTimestamp,
    };
  }
}
