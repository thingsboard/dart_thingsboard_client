enum Authority {
  SYS_ADMIN,
  TENANT_ADMIN,
  CUSTOMER_USER,
  REFRESH_TOKEN,
  ANONYMOUS
}

Authority authorityFromString(String value) {
  return Authority.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension AuthorityToString on Authority {
  String toShortString() {
    return toString().split('.').last;
  }
}
