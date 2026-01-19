/// Internal class 
class RecaptchaModel {
  const RecaptchaModel({
    required this.siteKey,
    required this.androidSiteKey,
    required this.iosSiteKey,
    required this.version,
    required this.projectId,
    this.logActionName,
  });

  final String version;
  final String? logActionName;
  final String? androidSiteKey;
  final String? iosSiteKey;
  final String? projectId;
  final String? siteKey;

  factory RecaptchaModel.fromJson(Map<String, dynamic> json) {
    return RecaptchaModel(
      siteKey: json['siteKey'],
      androidSiteKey: json['androidKey'],
      iosSiteKey: json['iosKey'],
      projectId: json['projectId'],
      version: json['version'],
      logActionName: json['logActionName'],
    );
  }
}
