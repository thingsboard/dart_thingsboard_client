enum OtaPackageType {
  FIRMWARE,
  SOFTWARE
}

OtaPackageType otaPackageTypeFromString(String value) {
  return OtaPackageType.values.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}

extension OtaPackageTypeToString on OtaPackageType {
  String toShortString() {
    return toString().split('.').last;
  }
}
