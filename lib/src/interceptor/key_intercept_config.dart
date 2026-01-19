class KeyInterceptConfig {
  final String? key;
  final String header;
  final String prefix;
  final String name;
  static const String _jwtScheme = 'Bearer ';
  static const _authHeaderName = 'X-Authorization';
  static const String _apiKeyScheme = 'ApiKey ';
  KeyInterceptConfig(
      {required this.header,
      required this.prefix,
      required this.name,
      required this.key});
  factory KeyInterceptConfig.jwt(String? jwtToken) {
    return KeyInterceptConfig(
        header: _authHeaderName,
        prefix: _jwtScheme,
        key: jwtToken,
        name: 'jwt-token');
  }
  factory KeyInterceptConfig.apiKey(String? apiKey) {
    return KeyInterceptConfig(
        header: _authHeaderName,
        prefix: _apiKeyScheme,
        name: 'api-key',
        key: apiKey);
  }
}
