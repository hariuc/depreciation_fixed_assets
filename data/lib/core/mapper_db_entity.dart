import 'package:data/core/local_dto.dart';
import 'package:domain/core/entity.dart';

abstract class MapperDbEntity<DB extends LocalDTO, ENTITY extends Entity> {
  DB mapToDB(ENTITY input);

  ENTITY mapToEntity(DB input);
}
