class InterceptorConfig {
  bool ignoreLoading = false;
  bool ignoreErrors = false;
  bool resendRequest = false;
  bool isRetry = false;

  InterceptorConfig(
      {this.ignoreLoading = false,
      this.ignoreErrors = false,
      this.resendRequest = false,
      this.isRetry = false});

  InterceptorConfig.fromExtra(Map<String, dynamic>? extra) {
    if (extra != null) {
      ignoreLoading = extra['ignoreLoading'] ?? false;
      ignoreErrors = extra['ignoreErrors'] ?? false;
      resendRequest = extra['resendRequest'] ?? false;
      isRetry = extra['isRetry'] ?? false;
    }
  }

  Map<String, dynamic> toExtra() {
    return {
      'ignoreLoading': ignoreLoading,
      'ignoreErrors': ignoreErrors,
      'resendRequest': resendRequest,
      'isRetry': isRetry
    };
  }
}
