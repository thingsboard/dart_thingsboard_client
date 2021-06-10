import 'dart:math';

class OAuth2ClientInfo {

  final String name;
  final String? icon;
  final String url;

  OAuth2ClientInfo.fromJson(Map<String, dynamic> json):
        name = json['name'],
        icon =  json['icon'],
        url =  json['url'];

  @override
  String toString() {
    return 'OAuth2ClientInfo{name: $name, icon: $icon, url: $url}';
  }
}

enum PlatformType {
  WEB,
  ANDROID,
  IOS
}

PlatformType platformTypeFromString(String value) {
  return PlatformType.values.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}

extension PlatformTypeToString on PlatformType {
  String toShortString() {
    return toString().split('.').last;
  }
}
