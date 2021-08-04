import 'has_uuid.dart';

abstract class HasId<I extends HasUuid> {
  I? getId();
}
