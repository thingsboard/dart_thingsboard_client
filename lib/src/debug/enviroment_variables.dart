abstract final class EnvironmentVariables {
  static const enableProxy =
      bool.fromEnvironment('ENABLE_PROXY', defaultValue: false);
  static const localHostIp = String.fromEnvironment('IP', defaultValue: '');
}
