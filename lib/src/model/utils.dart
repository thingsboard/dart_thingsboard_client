import 'dart:mirrors';

dynamic enumFromString(String value, t) {
  return (reflectType(t) as ClassMirror).getField(#values).reflectee.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}
